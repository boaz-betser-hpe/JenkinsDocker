#!/bin/sh
echo "Usage: startJenkins.sh <extrenalPort>"
imageName="AppPulseJenkins$1
cmd="docker start $imageName"
echo $cmd
`$cmd`
