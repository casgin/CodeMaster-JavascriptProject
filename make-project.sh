#!/usr/bin/env bash

destination=$1

if [[ -n "$destination" ]]; then

    # rsync -av --exclude='.git' --exclude=".idea" --exclude="README.md" --exclude="make-project-sh" --exclude="make-project-sh" . $destination
    rsync -av --exclude-from=exclude.txt . $destination
else
    echo "Inserire la destinazione"
    echo "Formato: ./make-project.sh <path-destinazione>"
fi