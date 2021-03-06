#!/bin/bash
protoc --java_out=lite:app/src/main/java app/src/log_structure.proto

export ANDROID_SDK_ROOT=/r/sawmill/.dependencies/android-tools
gradle build -x lint -x lintVitalRelease

status=$?
if [ $status -eq 0 ];
then
    echo "Build success"
    cp app/build/intermediates/dex/release/minifyReleaseWithR8/classes.dex ../data/loggingFull.dex
else
    echo "Build failure"
fi
