#!/bin/zsh

year=$(date +%Y)
month=$(date +%m)
day=$(date +%Y%m%d)
date_string="$year/$month/$(date +%d)"
journal_file="~/Documents/justin/journal/$year/$month/$day.txt"

cd "$HOME/Documents/justin/journal"
git add "$year/$month/$day.txt"
git commit -m "Journal entry for $date_string"
git push origin main

echo "Journal entry for $date_string is committed and pushed to main branch."

