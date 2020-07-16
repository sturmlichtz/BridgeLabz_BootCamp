#!/bin/bash

if [ -d $usersecret ]
then
	echo the varible already exists ;
else
	export usersecret= dH34xJaa23;
	echo env | grep $usersecret;
fi

