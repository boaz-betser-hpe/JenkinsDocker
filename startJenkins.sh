#!/bin/sh
echo "Usage: startJenkins.sh <NamePrefixi>"
imageName="$1""AppPulseJenkins"
cmd="docker start $imageName"
echo $cmd
`$cmd`
