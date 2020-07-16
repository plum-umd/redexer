#!/bin/bash

cd ..
echo "Beginning regression test on the 'hello_world.apk'"
echo "scripts/cmd.rb --cmd logging --logging-fine --to reg-testing/redexer-out.apk reg-testing/hello_world.apk"
scripts/cmd.rb --cmd logging --logging-fine --to reg-testing/redexer-out.apk reg-testing/hello_world.apk > /dev/null
cd reg-testing

apktool d redexer-out.apk &> /dev/null
smaliDiff=$(diff hello-correct/smali/androidx/core/view/ViewParentCompat.smali redexer-out/smali/androidx/core/view/ViewParentCompat.smali)

rm -rf redexer-out
echo "Regression test on the 'hello_world.apk'..."
if [ "$smaliDiff" = "" ]
then
    echo "SUCCESS"
    rm redexer-out.apk
else
    echo "FAIL: see 'redexer-out.apk' for the instrumented app"
fi