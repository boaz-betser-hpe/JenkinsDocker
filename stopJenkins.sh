#!/bin/sh
echo "Usage: stopJenkins.sh <extrenalPort>"
externalPort=$1
if [ "$externalPort" = "" ]
    then
    externalPort=80
fi
imageName="AppPulseJenkins$externalPort"
cmd="docker stop $imageName"
echo $cmd
`$cmd`
