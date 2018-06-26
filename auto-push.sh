#!/bin/sh
# Creating this script as I'm literally lazy to use git commands everytime!
clear
if [ -z "$1" ]; then
	MESSAGE="Misc: Auto-commit changes"
elif [ ! -z "$2" ]; then
	echo "Please provide a commit message within double quotes!"
else
	MESSAGE="$1"
fi

if [ ! -z "$MESSAGE" ] && [ -z "$2" ]; then
	echo " "
	echo "Adding changes..."
	git add *
	echo "Comitting changes..."
	git commit -m "$MESSAGE"
	echo "Pushing changes..."
	git push origin oreo-mr1
	echo "Finished...!"
else
	echo " "
	echo "Something went wrong!"
	echo "Please check the params!"
fi
