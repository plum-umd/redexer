#!/bin/bash

for f in ./*.sh
do
    if [ "$f" != "$0" ];
    then
        $f
        if [ $? -ne 0 ];
        then
            exit $?
        fi
    fi
done

echo "SUCCESS: All tests have passed"