# JenkinsDocker
Description:
Create a Jenkins Docker with Plugins.

To install Docker:

Install new Ubuntu image 64 bit version 14.04 using Ace

From machine in a desired folder e.g. /opt/docker run command:

git clone https://github.com/boaz-betser-hpe/JenkinsDocker

./installDocker.sh


Check for running containers:
docker ps -a

Stop all containers:
docker stop $(docker ps -a -q)

Delete all stopped containers:
docker rm $(docker ps -a -q)
