#!/bin/zsh

year=$(date +%Y)
month=$(date +%m)
day=$(date +%Y%m%d)
date_string="$year/$month/$(date +%d)"

mkdir -p ~/Documents/justin/journal/$year/$month
touch ~/Documents/justin/journal/$year/$month/$day.txt
echo "~/Documents/justin/journal/$year/$month/$day.txt is created."

echo "$date_string - JustinWulf\n\n" > ~/Documents/justin/journal/$year/$month/$day.txt
vim ~/Documents/justin/journal/$year/$month/$day.txt +3

