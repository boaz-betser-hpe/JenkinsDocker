#!/bin/sh
echo "Usage: deleteSingleJenkinsContainer.sh <externalPort>"
externalPort=$1
if [ "$externalPort" = "" ]
    then
    externalPort=80
fi
imageName=AppPulseJenkins$externalPort
./deleteSingleContainer.sh $imageName
if [ $? -eq 0 ]; then
    echo OK
else
    echo FAIL
fi
