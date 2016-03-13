#!/bin/bash
gradle build

status=$?
if [ $status -eq 0 ];
then
	cp app/build/intermediates/transforms/dex/release/folders/1000/1f/main/classes.dex ../data/logging.dex
else
	echo "Build failure"
fi
