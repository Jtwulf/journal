#!/bin/zsh

year=$(date +%Y)
month=$(date +%m)
day=$(date +%d)
date_string="$year-$month-$day"
journal_file=~/Documents/justin/personal/journal/$year/$month/$date_string.txt

echo day
echo day
echo day

git secret add "$journal_file"
git secret hide

cd "$HOME/Documents/justin/personal/journal"
git add "$journal_file.secret"
git commit -m "Journal entry for $date_string"
git push origin main

echo "Journal entry for $date_string is committed and pushed to main branch."
