#!/bin/bash

cd ..
echo "Beginning regression test on the 'hello_world.apk'"
echo "scripts/cmd.rb --cmd logging --logging-fine --to reg-testing/redexer-out.apk reg-testing/hello_world.apk"
scripts/cmd.rb --cmd logging --logging-fine --to reg-testing/redexer-out.apk reg-testing/hello_world.apk > /dev/null
cd reg-testing

apktool d -f redexer-out.apk &> /dev/null
smaliDiff=$(diff -r hello-correct/smali/ redexer-out/smali/)

rm -rf redexer-out
echo "Regression test on the 'hello_world.apk'..."
if [ "$smaliDiff" = "" ]
then
    echo "SUCCESS"
    rm redexer-out.apk
    exit 0
else
    echo "FAIL: see 'redexer-out.apk' for the instrumented app"
    exit 1
fi