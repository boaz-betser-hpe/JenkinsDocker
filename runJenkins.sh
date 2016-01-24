#!/bin/sh
docker run --name appPulseJenkins -p 80:8080 -p 50000:50000 jenkins
