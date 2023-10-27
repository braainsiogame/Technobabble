#!/bin/bash
echo "What's the registry name? (string)"

read registryname

echo "What's the localized name? (string)"

read localizedname 

echo "Do you need a blueprint? (Y/N)"

read blueprintrequired
if [ $blueprintrequired = Y ] 
then 
	echo "Blueprint is required"
		blueprintrequired="true"
	elif [ $blueprintrequired = "N" ]
	then
		echo "Blueprint is not required"
		blueprintrequired="false"
	else
			echo "Wrong option motherfucker, setting option to I DO NOT CARE."
			blueprintrequired="false"
fi
echo "Shape:"
read Shape 
if [[ $shape = "cube" ]] 
then 
echo "Length?"
read cubic
x"="$cubic
y"="$cubic
z"="$cubic
elif [[ $shape = "rectangle" ]] || [[ $shape = "cuboid" ]] 
then   
echo "Length?"
read x 
echo "Width?"
read y 
echo "Height?"
read z
else 
echo "Go do it yourself using a structure to json tool"
fi 
echo "Modifier? (Y/N)"
read modifier 
if [ $modifier = "N" ] 
then 
break
elif [ $modifier = "Y" ]
then 
echo "How many blocks are changed?"
read blockschanged
while blockschanged > 0 
do
	blockschanged--
	echo "WRONG OPTION MOTHERFUCKER"
done 
fi 
echo "Results:"

done