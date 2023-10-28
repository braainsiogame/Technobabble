#!/bin/bash

echo "name of machinery"
read machinery 
echo "name of recipe?"
read recipename
echo "can you plan ahead (Y/N)"
read caniplanahead
if [ "$caniplanahead" = "Y"]
then
echo "how much thingy do you think this takes"
read long
set thingy=1
else 
echo "i will guide you, disciple."
set thingy=0
done
echo "how long do you think this will take"
read cockandballs
echo "{"
echo "	\"machine\": ${machinery}"
echo "	\"registryName\": ${recipename}"
echo "	\"recipeTime\": ${cockandballs}"
echo "  \"requirements\": ["


