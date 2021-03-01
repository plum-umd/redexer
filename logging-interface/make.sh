#!/bin/bash

JAVA_COMPILE="javac src/*.java"
echo $JAVA_COMPILE
$JAVA_COMPILE
D8_CONVERT="d8 --release --no-desugaring src/*.class"
echo $D8_CONVERT
$D8_CONVERT
cp classes.dex ../data/logging.dex.fakeTemp
rm src/*.class
