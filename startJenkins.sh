#!/bin/sh
echo "Usage: startDocker.sh externalPort <NamePrefixi>"
imageName="$1""AppPulseJenkins"
cmd="docker start $imageName 
echo $cmd
`$cmd`
