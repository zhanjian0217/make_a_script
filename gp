#! /usr/bin/env bash
# This script is used to push remote branch

echo 'START'

notifier_path=$(which terminal-notifier)

message=$1
# currentBranch=$(git symbolic-ref --short -q HEAD)




# if  [ -f "$notifier_path" ] 
# then
#   echo 'checked terminal-notifier ...... '
# else
#   echo 'please install terminal-notifier from https://github.com/julienXX/terminal-notifier'
#   exit
# fi

if [ ! -z $message ]
then
  git add .
  git commit -m "$message"
  # git push
else
  echo '請輸入你的 commit message'
  exit
fi

# remote_url=$(git config --get remote.origin.url); trimmed="${remote_url#*:}"; 

# project_url="https://github.com/${trimmed%.git}"


# $notifier_path -title 'Push to remote branch' -message '👉 Check here & enter your project' -open $project_url


