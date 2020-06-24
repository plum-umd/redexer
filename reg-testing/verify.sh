#!/bin/bash

cd ..
echo "Beginning regression test on the 'minimal.apk'"
echo "scripts/cmd.rb --cmd logging --logging-fine --to reg-testing/redexer-out.apk reg-testing/minimal.apk"
scripts/cmd.rb --cmd logging --logging-fine --to reg-testing/redexer-out.apk reg-testing/minimal.apk
cd reg-testing

apktool d redexer-out.apk &> /dev/null
smaliDiff=$(diff minimal-correct/smali/androidx/core/view/ViewParentCompat.smali redexer-out/smali/androidx/core/view/ViewParentCompat.smali)

rm -rf redexer-out
echo "Regression test on the 'minimal.apk'..."
if [ "$smaliDiff" = "" ]
then
    echo "SUCCESS"
    rm redexer-out.apk
else
    echo "FAIL: see 'redexer-out.apk' for the instrumented app"
fi