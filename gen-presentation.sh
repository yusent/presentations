#!/bin/bash

filepath="$1/README.md"
tempfilepath="/tmp/$1.md"

cat me.md $filepath >> $tempfilepath

npx @marp-team/marp-cli --html $tempfilepath --output "$1.html"
rm $tempfilepath
