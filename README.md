# JenkinsDocker
##Description:
Create a Jenkins Docker with Plugins.

##To install Docker:
Install new Ubuntu image 64 bit version 14.04 using Ace

###From machine in a desired folder e.g. /opt/docker run commands:
*git clone https://github.com/boaz-betser-hpe/JenkinsDocker*
*cd JenkinsDocker*
*chmod +x *.sh*
*./installDocker.sh*
###To Run Jenkins container run the following command from same folder:
*./runJenkins.sh*

###To check for running containers run:
*docker ps -a*

###To stop and delete all containers run:
*./stopDeleteAllContainers.sh*

#Building new docker image
##To Builde new Docker Container run:
*docker build .*

##To commit build run:
docker commit
