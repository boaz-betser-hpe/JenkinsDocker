# JenkinsDocker
Check for running containers:
docker ps -a

Stop all containers:
docker stop $(docker ps -a -q)

Delete all stopped containers:
docker rm $(docker ps -a -q)
