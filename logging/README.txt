Notes on building logging.dex and loggingFull.dex:

- Installing Android Studio will get all the build tools needed to build both of these tools using
  the associated scripts.
- If installing Android Studio is not an option, the android command line tools can be installed
  at [INSERT LINK]. The gradle binary can be found here [INSERT LINK]. Gradle will handle the install
  of the needed build tools when you run build_and_copy.sh for the first time, once you have set your
  ANDROID_SDK_ROOT environment variable to [something relative to where you installed the command
  line tools]. Once gradle has installed those build tools, make.sh in the logging-interface
  directory will also have all dependencies installed.
