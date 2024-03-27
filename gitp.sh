#!/bin/zsh

year=$(date +%Y)
month=$(date +%m)
day=$(date +%d)
date_string="$year-$month-$day"
journal_file=~/Documents/justin/personal/journal/src/$year/$month/$date_string.txt

cd "$HOME/Documents/justin/personal/journal"

git secret add "src/$year/$month/$date_string.txt"
git secret hide

git add "src/$year/$month/$date_string.txt.secret"
git commit -m "Journal entry for $date_string"
git push origin main

echo "Journal entry for $date_string is committed and pushed to main branch."
