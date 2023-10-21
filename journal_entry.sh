#!/bin/zsh

header=$(./create_header.sh)
year=$(date +%Y)
month=$(date +%m)
day=$(date +%d)
date_string="$year-$month-$day"
file_path=~/Documents/justin/personal/journal/$year/$month/$date_string.txt

if [ -e "$file_path" ]; then
    echo "File $file_path already exists."
    vim "$file_path" +9
else
    mkdir -p $(dirname "$file_path")
    touch "$file_path"
    echo "$header" >> "$file_path"
    echo "\n" >> "$file_path"
    vim "$file_path" +9
fi
