#!/bin/sh
echo "Usage: startJenkins.sh <extrenalPort>"
externalPort=$1
if [ "$externalPort" = "" ]
    then
    externalPort=80
fi
imageName="AppPulseJenkins$externalPort"
cmd="docker start $imageName"
echo $cmd
$cmd
