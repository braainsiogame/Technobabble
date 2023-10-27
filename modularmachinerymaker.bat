#!/bin/bash
echo "What's the registry name? (string)"

read registryname

echo "What's the localized name? (string)"

read localizedname 

echo "Do you need a blueprint? (boolean)"

read blueprintrequired
if [ $blueprintrequired != "true" ] && [ $blueprintrequired != "false" ] 
then 
echo "you will regret not using a boolean"
fi
echo "What are the parts needed? (use a blueprint to json tool)"

read parts 

echo "done"
done