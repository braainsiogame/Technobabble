#!/bin/bash

read times
set ogtime = "$times"
while [[ $times -gt 0 ]] 
do
read x
read y
read z
declare -a damn"$times" = ("$x", "$y", "$z")
done
let "times+=-1"
done 
