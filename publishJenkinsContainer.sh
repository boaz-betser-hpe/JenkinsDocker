#!/bin/sh
registry=$1
logFile=build.log
if [ "$registry" = "" ]
then
  echo "usage: command <registry host>"
  exit 1
fi
dockerJenkins=$registry':5000/jenkinsdocker'
containerName=`cat $logFile|grep "Successfully built"|gawk '{ print $3 }'`
if [ "$containerName" = "" ]
then
  echo "missing container from file $logFile - container found: $containerName"
  exit 1
fi

echo publishing to: $dockerJenkins
docker tag $containerName $dockerJenkins
docker push $dockerJenkins 
