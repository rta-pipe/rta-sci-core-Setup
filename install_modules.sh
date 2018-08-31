#!/usr/bin/env bash
#1) directory path where copy packages

trap exit ERR


 if [ "$1" == "" ] ; then
     echo "error"
     exit
 fi


echo "---------"
echo "Installing RTAlib"
cp -r RTAlib $1
echo "---------"
echo "Installing GammaPipeCommon"
cp -r GammaPipeCommon $1
echo "---------"
echo "Installing pipeline_manager"
cp -r pipeline_manager $1
