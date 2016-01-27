#!/bin/sh
externalPort=$1
if [ "$externalPort" = "" ]
    then
    externalPort=80
fi
sudo docker exec -it AppPulseJenkins$externalPort bash
