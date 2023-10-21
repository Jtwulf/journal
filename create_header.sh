#!/bin/zsh

year=$(date +%Y)
month=$(date +%m)
day=$(date +%d)
time=$(date +%H:%M)
day_of_week=$(date +%A)
user=$(whoami)

date_string="$year-$month-$day $time ($day_of_week)"

header="/* *************************************************** */\n"
header+="/*                                                     */\n"
header+="/*   $date_string                         */\n"
header+="/*                                                     */\n"
header+="/*   By: $user                                    */\n"
header+="/*                                                     */\n"
header+="/* *************************************************** */\n"

echo -e "$header"
