#!/bin/sh
echo "Usage: startDocker.sh <externalPort>"
externalPort=$1
if [ "$externalPort" = "" ]
    then
    externalPort=80
fi
imageName="AppPulseJenkins$externalPort"
version=1.0
logFile=build.log
JENKINS_HOSTNAME=`hostname -f`
JENKINS_INTERNAL_HTTP_PORT=9999
containerName=`cat $logFile|grep "Successfully built"|gawk '{ print $3 }'`
cmd="docker run -d -h $JENKINS_HOSTNAME --add-host mydev.devdomain.com:127.0.0.1 -e PS1=JenkinsDocker_$externalPort> -e JENKINS_OPTS=--httpPort=$JENKINS_INTERNAL_HTTP_PORT -e externalPort=$externalPort --name $imageName -p 80$externalPort:8080 -p 90$externalPort:9090 -p $externalPort:$JENKINS_INTERNAL_HTTP_PORT $containerName"
echo $cmd
$cmd
./startJenkins.sh $externalPort
