#!/bin/bash

#DISCLAIMER: This tool works only if the file contains logs from only one instrumented application
gsed -E  -e 's/\( /\(/g' $1 | grep 'I/org.umd.logging' | cut -d' ' -f 2,3,4,5,6,7,8,9,10,11,12 | gsed -E -e 's/\"/\\\"/g' -e 's/, /,/g' -e '/^(Api|Method) > [0-9]+ /s/ /|_|/4g'

