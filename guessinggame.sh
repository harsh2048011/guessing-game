#!/usr/bin/env bash

echo "|-----------------Welcome to the Guessing Game------------------|"
echo "|You have to guess the number of files in your current directory|"
function game {
	read -p "Please enter the number of files: " guess
    files=$(ls -1 | wc -l)
}
game
while [[ $guess -ne $files ]]
do
	if [[ $guess -lt $files ]] 
	then
	    echo "Wrong Guess"
		echo "Try with a Higher value."
	else
	    echo "Wrong Guess"
		echo "Try with a Lower value."
	fi
	game
done
echo " "
echo "***Congratulations***"
echo "The value you entered is correct"
echo "The list of files are: " 
ls -1