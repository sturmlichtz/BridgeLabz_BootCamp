#!/bin/bash

for files in `find . -mtime +7`;
do
	echo $files;
	mv $files backup;
done
