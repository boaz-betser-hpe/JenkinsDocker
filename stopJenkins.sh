#!/bin/sh
echo "Usage: startJenkins.sh <extrenalPort>"
imageName="AppPulseJenkins$1"
cmd="docker stop $imageName"
echo $cmd
`$cmd`
