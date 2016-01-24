#!/bin/sh
imageName=AppPulseJenkins
version=1.0
logFile=build.log
docker build . | tee $logFile
containerName=`cat $logFile|grep "Successfully built"|gawk '{ print $3 }'`
echo docker commit $containerName  $imageName:$version
