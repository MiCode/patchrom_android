#!/bin/bash

RMLINE=$PORT_ROOT/tools/rmline.sh
APKTOOL=$PORT_ROOT/tools/apktool

rm -rf temp
mkdir temp
mkdir temp/android
mkdir temp/miui

function save_framework_for_diff() {
	echo "save current framework for diff"
	rm -rf last-framework/*
	cp -r framework.jar.out last-framework/
	cp -r services.jar.out last-framework/
	cp -r android.policy.jar.out last-framework/
}


function copy_and_remove_lines() {
	echo "remove .line from temp/android/$1"
	cp -r $1 temp/android
	$RMLINE temp/android/$1
}

save_framework_for_diff

copy_and_remove_lines framework.jar.out
copy_and_remove_lines services.jar.out
copy_and_remove_lines android.policy.jar.out

function disassemble_and_remove_lines() {
	echo "remove .line from temp/miui/$1.out"
	$APKTOOL d $1
	$RMLINE $1.out
}

cd temp/miui
cp $ANDROID_OUT/system/framework/*.jar .
disassemble_and_remove_lines framework.jar
disassemble_and_remove_lines services.jar
disassemble_and_remove_lines android.policy.jar
