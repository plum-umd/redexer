#!/usr/bin/env python

from optparse import OptionParser
import sys
import os
from subprocess import call, Popen, PIPE
import re

f_log = "log.txt"

def main():
  parser = OptionParser(usage="usage: %prog [options]")
  parser.add_option("-d",
    action="store_true", dest="offline",
    help="offline mode")
  parser.add_option("-o", "--output",
    action="store", dest="output", default=f_log,
    help="output file")

  (opt, argv) = parser.parse_args()

  adb = "adb"
  log = "logcat"
  pkg = "org.umd.logging"

  opts = []
  if opt.offline: opts.append("-d")
  opts.extend([pkg + ":I", "*:S"])

  if not opt.offline: call([adb, log, "-c"])

  a = Popen([adb, log] + opts, stdout=PIPE).stdout
  f = open(f_log, 'w')
  indent = -2
  while True:
    try:
      line = a.readline()
      if len(line) == 0: break # EOF
      line = line.rstrip("\r\n")
      if not pkg in line: continue
      msg = ''.join(re.split("(>|<)", line)[1:])
      if msg[0] == '>':
        indent += 2
        print "%*s%s" % (indent, "", msg)
        f.write("%*s%s\n" % (indent, "", msg))
      elif msg[0] == '<':
        print "%*s%s" % (indent, "", msg)
        f.write("%*s%s\n" % (indent, "", msg))
        indent -= 2
    except KeyboardInterrupt: break
  f.close()

if __name__ == "__main__":
  sys.exit(main())

