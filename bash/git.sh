#!/usr/bin/env bash

################################################################################
#                                                                              #
# GIT                                                                          #
# Script to ease the Process required for Git Commits                          #
#                                                                              #
################################################################################

## Clear the screen
clear

## Change directory to the GIT repository
cd "/Users/USER/Path"

## Welcome Message
echo -e \\t "GIT control"
echo -e \\t "------------------------------"

## Always Pull from the server first
git pull beanstalk master
echo -e \\n

## Recursively add any files
git add .

## Check the status of the added / removed files
git status

## Continue
echo -e \\n\\t "Continue? (Y/N) (Case sensitive)"
read continue

if [[ "$continue" == "Y" ]]
    then

		## Ask for the comment to add for the GIT Push
		echo -e \\n\\t "Add comment please"
		read comment
		echo -e \\n

		if [[ "$comment" ]]
		    then

		    	echo -e \\t "Commiting"
		    	echo -e \\n
		        git commit -a -m "$comment"
		        echo -e \\n

		        echo -e \\t "Pushing"
		        git push beanstalk master
		        echo -e \\n

		    else
		        echo -e \\t "A comment must be added"
		fi
    else
        echo -e \\t "Please close this terminal"
fi
