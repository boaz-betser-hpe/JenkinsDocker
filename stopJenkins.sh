#!/bin/sh
echo "Usage: startJenkins.sh <NamePrefixi>"
imageName="$1""AppPulseJenkins"
cmd="docker stop $imageName"
echo $cmd
`$cmd`
