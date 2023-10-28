#!/bin/bash
declare parts=()
echo "What's the registry name? (string)"
read registryname
echo "What's the localized name? (string)"
read localizedname 
echo "Color?"
read color
echo "Do you need a blueprint? (Y/N)"
read blueprintrequired
set blueprintrequired = "${blueprintrequired,,}"
if [ "$blueprintrequired" = Y ]
then 
	echo "Blueprint is required"
		blueprintrequired="true"
	elif [ "$blueprintrequired" = "N" ]
	then
		echo "Blueprint is not required"
		blueprintrequired="false"
	else
			echo "Wrong option motherfucker, setting option to I DO NOT CARE."
			blueprintrequired="false"
fi
declare var_
declare exit
declare hector
echo "Can you determine the exact amount of elements you'll need in the future? (Y/N)"
read bruh 
if [ "$bruh" = Y ] 
then 
declare icannotdesigninthefuture=0
echo "How many elements?"
read hector
else
declare icannotdesigninthefuture=1
let "hector=1"
fi
echo "Parts"
echo "Tips: You can also use [1, 0, -1] https://github.com/HellFirePvP/ModularMachinery/wiki/8.-Custom-Machines:-Machine-Format---Position-Permutations-%5BAdvanced%5D"
while [[ "$hector" -gt 0 ]]
do
let "hector+=-1"

declare -a var_"$hector"
echo "x?"
read x 
set var_"$hector"+="$x"
echo "y?"
read y 
set var_"$hector"+="$y"
echo "z?"
read z 
set var_"$hector"+="$z"
echo "Elements:"
read Elements
set var_"$hector"+="$Elements"
parts+=("$var_"$hector"")
if [ "$icannotdesigninthefuture" = 1 ]
then 
echo "are we done here? (Y/N)"
read maybe
if [ "$maybe" = "Y" ] 
then 
let "hector=0"
else 
let "hector=1"
fi
fi

done
 
echo "Modifier? (Y/N)"
read modifier 
if [ "$modifier" = "N" ] 
then
echo "yeah"
elif [ "$modifier" = "Y" ]
then 
echo "yeah"
fi
for key in "${parts[@]}"
do
  for elements in "${var_[@]}" 
  do 
  echo "${elements}"
  done
done
echo "How many blocks are changed?"
read blockschanged
while [ "$blockschanged" -gt 0  ]
do
	blockschanged--
	echo "WRONG OPTION MOTHERFUCKER"
done  
echo "Results:"
echo "\{" 
echo " \"registryName\": \"${registryname}\",   "
echo " \"localizedName\": \"${localizedname}\", "
echo " \"requires-blueprint\": \"${blueprintrequired}\", "
echo " \"color:\": \"${color}\", " 
echo " \"parts:\": [ "
