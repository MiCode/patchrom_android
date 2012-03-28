#!/bin/bash

RMLINE=$PORT_ROOT/tools/rmline.sh
APKTOOL=$PORT_ROOT/tools/apktool

rm -rf temp
mkdir -p temp/android
mkdir -o temp/miui

cp -r *.jar.out temp/android

cd temp/miui
cp $ANDROID_OUT/system/framework/framework.jar .
cp $ANDROID_OUT/system/framework/services.jar .
cp $ANDROID_OUT/system/framework/android.policy.jar .

$APKTOOL d framework.jar
$APKTOOL d services.jar
$APKTOOL d android.policy.jar

cd -

$RMLINE temp
