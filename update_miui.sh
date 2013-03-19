#!/bin/bash

RMLINE=$PORT_ROOT/tools/rmline.sh
APKTOOL=$PORT_ROOT/tools/apktool

function disassemble_and_remove_lines() {
	echo "remove .line from temp/miui/$1.out"
	$APKTOOL d $1 > /dev/null 2>/dev/null
	$RMLINE $1.out
}

mkdir -p temp/miui
cd temp/miui

if [ -z "$ANDROID_OUT" ]
then
	echo "Pls setup environment firstly"
	exit 1
fi

if [ $# -eq 0 ]
then
	echo "update miui-all"
	rm -rf android.policy.jar.out framework.jar.out services.jar.out
	cp  $ANDROID_OUT/system/framework/android.policy.jar .
	cp  $ANDROID_OUT/system/framework/framework.jar .
	cp  $ANDROID_OUT/system/framework/services.jar .
	disassemble_and_remove_lines framework.jar
	disassemble_and_remove_lines services.jar
	disassemble_and_remove_lines android.policy.jar
	if [ -f $ANDROID_OUT/system/framework/framework2.jar ]
	then
		echo "merge framewrok2.jar.out to framewrok.jar.out"
		rm -rf framework2.jar.out
		cp  $ANDROID_OUT/system/framework/framework2.jar .
		disassemble_and_remove_lines framework2.jar
		cp -r framework2.jar.out/* framework.jar.out/
		rm -rf framework2.jar.out
	fi
else
	until [ $# -eq 0 ]
	do
		case $1 in
			android.policy*)
				echo "update miui-android"
				rm -rf android.policy.jar.out
				cp  $ANDROID_OUT/system/framework/android.policy.jar .
				disassemble_and_remove_lines android.policy.jar
				shift
				;;
			framework*)
				echo "update miui-framework"
				rm -rf framework.jar.out
				cp $ANDROID_OUT/system/framework/framework.jar .
				disassemble_and_remove_lines framework.jar
				if [ -f $ANDROID_OUT/system/framework/framework2.jar ]
				then
					echo "merge framewrok2.jar.out to framewrok.jar.out"
					rm -rf framework2.jar.out
					cp  $ANDROID_OUT/system/framework/framework2.jar .
					disassemble_and_remove_lines framework2.jar
					cp -r framework2.jar.out/* framework.jar.out/
					rm -rf framework2.jar.out
				fi
				shift
				;;
			services*)
				echo "update miui-services"
				rm -rf services.jar.out
				cp  $ANDROID_OUT/system/framework/services.jar .
				disassemble_and_remove_lines services.jar
				shift
				;;
			*)
				echo "Error: $1"
				shift
				;;
		esac
	done
fi


