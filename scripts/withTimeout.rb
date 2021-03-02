# Ryan Megathlin
# Insert copyright, maybe?

# Usage: ruby withTimeout.rb [timeout_length] [args]
# where [args] are the arguments for cmd.rb

# Basic thoughts for this script...
# It is basically going to be a loop that runs redexer,
# and determines fail/success. If fail, it will determine where
# the failure was and if timeout related, update skip file,
# then resume redexer where it broke. I want this script to act as
# a 'pass-through' to cmd.rb, so inputs to this will be inputs to cmd.rb
# (with a warning on '--fork' because this script won't work under
# multiple processes)

# TODO: With some work, we could split this into a process for each dex file,
# growing the skip.txt as needed. This would have huge performance gains

require 'fileutils'

THIS_FILE = File.expand_path(__FILE__)
HERE = File.dirname(THIS_FILE)
HOME = File.join(HERE, "..")
CMD_LOC = File.join(HERE, "cmd.rb")
OPT_DEX = "--opt-dex"
RUN_WITH_TIMEOUT = "-run_with_timeout"
START_ON_CLASS = "--start_on_class"
CMD = "ruby " + CMD_LOC.to_s
THIS_APK = ARGV[-1]
TIMEOUT = ARGV[0].to_i
TEMP_FILE = ".timeoutTemp.txt"
TIMEOUT_REPORT = "Timeout on logging class "
PIPEFAIL = "set -o pipefail; "
DEX_CLASS_TO_START_WITH = nil
# DEX_CLASS_TO_START_WITH = "classes.dex,androidx.constraintlayout.widget.ConstraintLayout"
SKIP = File.join(HOME, "data/skip.txt")
SKIP_TEMP = File.join(HERE, ".skipTemp.txt")
PERFORMANCE_REPORT = "redexer performance statistics"


# Function to print stdout and stderr as it comes, but also gather into one variable to be returned.
# Returns a string containing all output from the command and the exit status of the command. If
# system call does not exit properly, default status value is -1.
# DEV: This function uses tee so that output goes to the terminal and can still be collected
# afterwards. It is a bit of a hacky solution but runtime did not need to be a consideration.
# Elegant solution would be to use select() to collect stdout/stderr and forward to terminal at the
# same time. Also, we use pipefail so that the exit status from system() reflects the exit status of
# the call to ruby, not the call to tee
def system_tee(cmd)
    puts cmd
    cmd = PIPEFAIL + cmd + " |& tee " + TEMP_FILE
    res = system(cmd)
    if ($?.exited?)
        exit_status = $?.exitstatus
        puts "Exit status: " + exit_status.to_s + " and success is " + res.to_s
    else
        exit_status = -1
    end
    fd = File.new(TEMP_FILE, "r")
    out_ret = fd.read
    File.delete(fd)
    return out_ret, exit_status
end


if (TIMEOUT == 0)
    $stderr.puts "Error: First argument was not an integer, or was 0. Please enter a " +
                 "valid non-zero integer for the first argument."
    exit 1
end

timeout_string = RUN_WITH_TIMEOUT + " " + TIMEOUT.to_s
args = ""
ARGV[1..-1].each do |arg|
    args += arg + " "
end
args[-1] = ""

opt_str = OPT_DEX + " \"" + timeout_string + "\"" # options must be wrapped in quotes
# Run redexer once. If it fails, go into the loop until it does terminate,
# otherwise terminate happily
if (DEX_CLASS_TO_START_WITH.nil?)
    sys_cmd = CMD + " " + opt_str + " " + args
else
    sys_cmd = CMD + " " + opt_str + " " + START_ON_CLASS + " " + DEX_CLASS_TO_START_WITH +
              " " + args
end


out, status = system_tee(sys_cmd)
puts "From script: redexer complete. status is " + status.to_s
succ = status == 0

next_classesN = 1

cur_dex = "classes.dex"
skip_moved = false
# Loop until we exit Redexer successfully
while (!succ)
    puts "From script: Redexer failed. Determining failed class and re-running"
    if (!skip_moved)
        FileUtils.cp(SKIP, SKIP_TEMP)
        skip_moved = true
    end
    # Parse output of the call to redexer
    # First, determine how many classesN.dex have successfully been instrumented
    some_class_succ = false
    rend_idx = out.index(PERFORMANCE_REPORT)
    while (!rend_idx.nil?)
        puts "rend_idx not nil, equals " + rend_idx.to_s
        next_classesN += 1
        some_class_succ = true
        rend_idx = out.index(PERFORMANCE_REPORT, rend_idx+1)
    end

    if (some_class_succ)
        cur_dex = "classes" + next_classesN.to_s + ".dex"
    end

    tidx = out.index(TIMEOUT_REPORT)
    if (tidx.nil?)
        raise "Failed execution not due to a timeout. There should be an above error with" +
              " more details."
        exit 1
    end

    # Find the name of the failing class and convert it to Java type syntax
    cls_idx_start = out.index("L", tidx)
    cls_idx_end = out.index(";", tidx)
    failed_class = out[cls_idx_start..cls_idx_end]
    # Cut off the 'L' and ';', then swap all '/' for '.', as conversion Android -> Java type
    failed_class = failed_class[1..-2].gsub(/\//, '.')
    redexer_start = cur_dex + "," + failed_class
    puts "From script: Failing class is " + failed_class

    # Add class to skip file
    skip_fd = File.open(SKIP, "a")
    skip_fd.puts failed_class
    skip_fd.close

    opt_str = OPT_DEX + " \"" + timeout_string + "\""
    sys_cmd = CMD + " " + opt_str + " " + START_ON_CLASS + " " + redexer_start + " " + args
    out, status = system_tee(sys_cmd)
    puts "From script: redexer complete. status is " + status.to_s
    succ = status == 0
end
puts "From script: Success. Moving skip file to alternative location and terminating"

# Move the skip file back, and put the generated skip file somewhere safe
if (skip_moved)
    apk = File.basename(THIS_APK, ".apk")
    new_skip_file = File.join(HOME, "data", apk + "-skip.txt")
    FileUtils.mv(SKIP, new_skip_file)
    FileUtils.mv(SKIP_TEMP, SKIP)
end
