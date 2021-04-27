#!/bin/bash

cd ..
echo "Beginning regression test on the 'minimal.apk'"
echo "scripts/cmd.rb --cmd logging --logging-fine --to reg-testing/redexer-out.apk reg-testing/minimal.apk"
scripts/cmd.rb --cmd logging --logging-fine --to reg-testing/redexer-out.apk reg-testing/minimal.apk > /dev/null
cd reg-testing

apktool d -f redexer-out.apk &> /dev/null
smaliDiff=$(diff -r minimal-correct/smali/ redexer-out/smali/)

rm -rf redexer-out
echo "Regression test on the 'minimal.apk'..."
if [ "$smaliDiff" = "" ]
then
    echo "SUCCESS"
    rm redexer-out.apk
    exit 0
else
    echo "FAIL: see 'redexer-out.apk' for the instrumented app"
    exit 1
fi