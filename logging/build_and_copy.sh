#!/bin/bash
protoc --java_out=lite:app/src/main/java app/src/log_structure.proto
gradle build -x lint -x lintVitalRelease

status=$?
if [ $status -eq 0 ];
then
    echo "Build success"
    cp app/build/intermediates/dex/release/mergeDexRelease/classes.dex ../data/logging.dex
else
    echo "Build failure"
fi
