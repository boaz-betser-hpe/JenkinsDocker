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
containerName=myd-vm02816.hpswlabs.adapps.hp.com:5000/jenkinsdocker
cmd="docker run -d -h $JENKINS_HOSTNAME --add-host mydev.devdomain.com:127.0.0.1 -e PS1=JenkinsDocker_$externalPort> -e JENKINS_OPTS=--httpPort=$JENKINS_INTERNAL_HTTP_PORT -e externalPort=$externalPort --name $imageName -p 80$externalPort:8080 -p 90$externalPort:9090 -p 30$externalPort:30$externalPort -p $externalPort:$JENKINS_INTERNAL_HTTP_PORT $containerName"
echo $cmd
$cmd
./startJenkins.sh $externalPort
