#/usr/bin/env bash
#-*- coding: utf-8 -*-
for i in "$@"; do 
    cp ./fr/$i ./tn/$i
    cp ./fr/$i ./gruppenf.jpg
    convert ./tn/$i -resize 220x220 -quality 75 ./tn/$i
    convert ./gruppenf.jpg -resize 1200x1200 -quality 65 ./gruppenf.jpg
    exiftool -overwrite_original -all:all= -tagsFromFile @ -exif:Orientation ./fr/$i &>/dev/null
    exiftool -overwrite_original -all:all= -tagsFromFile @ -exif:Orientation ./tn/$i &>/dev/null
    exiftool -overwrite_original -all:all= -tagsFromFile @ -exif:Orientation ./gruppenf.jpg &>/dev/null
done
