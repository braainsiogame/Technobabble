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
echo "How many modifiers?"
read modifiers
echo "Results:"
echo "{" 
echo " \"registryName\": \"${registryname}\",   "
echo " \"localizedName\": \"${localizedname}\", "
echo " \"requires-blueprint\": \"${blueprintrequired}\", "
echo " \"color:\": \"${color}\", "
if [[ "$modifiers" != "0" ]] 
then
echo " \"modifiers:\" [ "
while [[ "$modifiers" -gt 0 ]]
do
	echo "		{    "
	echo "			{"
	echo "			//replace the part here"
	echo "			}"
	echo "          \"description\": \"replace your own here\""
	echo "			\"modifier\": {"
	echo "				\"io\": \"set your own here\","
	echo "				\"target\": \"possible target: item, fluid, energy, duration\","
	echo "				\"operation\": \"Possible operations: 0 = Addition, 1 = Multiplication\","
	echo "				\"multiplier\": \"i think you know\","
	echo "				\"affectChance\": \"false\","
	echo "			}"
	echo "		}    "
let "modifiers+=-1"
done
	echo "		],    "
fi
echo " \"parts:\": [ "
echo " 			//i think you know the drill"
echo "			//if you don't, https://media.gettyimages.com/id/184294297/photo/cordless-yellow-power-drill-isolated-on-a-white-background.jpg?s=612x612&w=gi&k=20&c=xysSSFGrpq1G2NRF-SQiPp2CbBf6fyGjvtipFELrg8c="
echo " ], "
echo "}"

