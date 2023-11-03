#!/bin/zsh

year=$(date +%Y)
month=$(date +%m)
day=$(date +%d)
time=$(date +%H:%M)
day_of_week=$(date +%A)
user=$(whoami)

date_string_long="$year-$month-$day $time ($day_of_week)"
date_string_short="$year-$month-$day"

header="/* *************************************************** */\n"
header+="/*                                                     */\n"
header+="/*   $date_string_long                         */\n"
header+="/*                                                     */\n"
header+="/*   By: $user                                    */\n"
header+="/*                                                     */\n"
header+="/* *************************************************** */\n"

file_path=~/Documents/justin/personal/journal/src/$year/$month/$date_string_short.txt

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
