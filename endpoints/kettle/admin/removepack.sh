#!/bin/bash
HERE=$(pwd)

LANGUAGE=$1
ORIGIN=$(echo $2 | sed 's/file:\/\///g')

echo "Removing language pack "$LANGUAGE" from folder "$ORIGIN

#PLUGIN_FOLDER=~/Desktop/server


cd $ORIGIN
find . \( -iname "*messages-"$LANGUAGE".properties" -and \! -path "*languagepackdistributor*" \) -delete
cd $HERE
