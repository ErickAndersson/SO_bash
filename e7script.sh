#!/bin/bash

userfile=$1
sizeT=$2

echo "File to look: " $userfile
echo "Size to look: " $sizeT

find "$userfile";
