# JenkinsDocker
##Description:
Create a Jenkins Docker with Plugins.

##To install Docker:
Install new Ubuntu image 64 bit version 14.04 using Ace

###From machine in a desired folder e.g. /opt/docker run command:
git clone https://github.com/boaz-betser-hpe/JenkinsDocker

cd JenkinsDocker

chmod +x *.sh

./installDocker.sh

./runJenkins.sh

##To check for running containers run:
docker ps -a

##To stop and delete all containers run:
./stopDeleteAllContainers.sh

#Building docker image
##To Builde new Docker Container run:
docker build .

##To commit build run:
docker commit
