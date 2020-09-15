#!/bin/bash

filepath="$1/README.md"
tempfilepath="/tmp/$1.md"

cat me.md $filepath >> $tempfilepath

marp --html $tempfilepath --output "$1.html"
rm $tempfilepath
