#! /usr/bin/env bash
# This script is used to push remote branch

commit_message=$1
notifier_path=$(which terminal-notifier)
current_branch=$(git symbolic-ref --short -q HEAD)

if  [ ! -f "$notifier_path" ]; then
  echo 'please install terminal-notifier from https://github.com/julienXX/terminal-notifier'
  exit
fi

if [[ -n $(git status --porcelain) ]]; then
  if [ ! -z "$commit_message" ]
  then
    git add .
    git commit -m "$commit_message"
    git push origin $current_branch
  else
    echo '請輸入你的 commit message'
    exit
  fi
else
  echo "false"
  exit
fi

remote_url=$(git config --get remote.origin.url); trimmed="${remote_url#*:}"; 

project_url="https://github.com/${trimmed%.git}"

$notifier_path -title 'Push to remote branch' -message '👉 Check here & enter your project' -open $project_url


