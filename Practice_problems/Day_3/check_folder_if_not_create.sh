#!bin/bash

read -p "Enter the name of folder you wished create:-" user_folder
if [ -d $user_folder ]
then 
	echo $user_folder already exists
else 
	mkdir $user_folder;
	echo $user_folder is created!
fi

