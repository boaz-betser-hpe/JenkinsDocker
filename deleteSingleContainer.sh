#!/bin/sh
echo "Usage: deleteSingleContainer.sh <externalPort>"
externalPort=$1
if [ "$externalPort" = "" ]
    then
    externalPort=80
fi
imageName=AppPulseJenkins$externalPort
echo Deleting container: $imageName
docker stop $imageName
docker rm $imageName
if [ $? -eq 0 ]; then
    echo OK
else
    echo FAIL
fi
