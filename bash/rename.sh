#!/usr/bin/env bash

################################################################################
#                                                                              #
# File Rename                                                                  #
#                                                                              #
################################################################################

# bash ~/Google\ Drive/Service\ Files/Server\ Local/bash/rename.sh
#
clear

# Loop over the directories

shopt -s extglob
shopt -s nocaseglob

IMAGE_TYPES='jpg'

IFS=$'\n' dirlist=(`find "$PWD" -type d`)

for dir in "${dirlist[@]}"; do
    cd "$dir"
    ls *.+($IMAGE_TYPES) > /dev/null 2>&1 || continue

    counter=0
    for file in *.+($IMAGE_TYPES); do
        printf -v newname "%.d.%s" $((counter += 1)) "${file##*.}"
        mv -v "$file" "$newname"
    done
done