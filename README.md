# JenkinsDocker
##Description:
Create a Jenkins Docker with Plugins.

##To install Docker:
Install new Ubuntu image 64 bit version 14.04 using Ace

#From machine in a desired folder e.g. /opt/docker run command:

git clone https://github.com/boaz-betser-hpe/JenkinsDocker

cd JenkinsDocker

chmod +x *.sh

./installDocker.sh

./runJenkins.sh

To check for running containers run:

docker ps -a

To stop all containers run:
docker stop $(docker ps -a -q)

Delete all stopped containers:
docker rm $(docker ps -a -q)
