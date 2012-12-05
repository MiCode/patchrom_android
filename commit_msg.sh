#!/bin/bash

if [ -z "$ANDROID_TOP" ]
then
	echo "Error: setup environment firstly"
	exit 1
fi

if [ $# -ne 1 ]
then
	echo "Usage:"
	echo "    ${0##*/} commit_number(from frameworks/base)"
	echo
	exit
fi

PWD_OLD=`pwd`

cd $ANDROID_TOP/frameworks/base/

IFS_OLD="$IFS"
IFS=
msg=`git log  -1 $1 | grep  "^\s" | grep -v "Signed-off-by:" | sed "s/\s\+//" | sed "s/Change-Id:/Ref-Id:/"`

cd $PWD_OLD
echo "---------------------------"
echo $msg
echo "---------------------------"
echo
echo $msg | git commit --file=-

IFS="$IFS_OLD"


