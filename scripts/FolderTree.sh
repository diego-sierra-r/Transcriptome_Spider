#!/bin/bash

# This script create the main folders for the project.
# It needs to be placed on a folder named "Transcriptome_Spider"

folder="Transcriptome_Spider"
path=${PWD##*/}
if [ $path = $folder ]
then
	mkdir Data
	mkdir Results_DE
	mkdir scripts
	touch .gitingore
	echo "Tree folder created"
	mv ${PWD}/FolderTree.sh ${PWD}/scripts
else
	echo "Folder 'Transcriptome_Spider' not found"
fi
