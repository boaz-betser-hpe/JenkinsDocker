#!/bin/sh
imageName=AppPulseJenkins
version=1.0
logFile=build.log
docker build . | tee $logFile
containerName=`cat $logFile|grep "Successfully built"|gawk '{ print $3 }'`
echo docker commit $containerName  $imageName:$version
docker run --name appPulseJenkins -p 80:8080 -p 50000:50000 $containerName
