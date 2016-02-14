#!/bin/bash
gradle build

status=$?
if [ $status -eq 0 ];
then
	cp app/build/intermediates/dex/debug/classes.dex ../data/logging.dex
else
	echo "Build failure"
fi
