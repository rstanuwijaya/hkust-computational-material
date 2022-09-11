#!/bin/bash

if [ -z $1 ]; then
    echo "Please supply a name"
    exit
fi

mkdir $1
cp ./.template $1/$1.tex
sed --in-place -e "s|TITLE_PLACEHOLDER|$1|" $1/$1.tex