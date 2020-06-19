#!/bin/bash
gradle build -x lint -x lintVitalRelease

status=$?
if [ $status -eq 0 ];
then
    cp app/build/intermediates/dex/release/mergeDexRelease/classes.dex ../data/logging.dex
else
    echo "Build failure"
fi
