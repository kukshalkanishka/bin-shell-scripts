#! /bin/bash

cat ./test/*.js |tr "\n" "@"| sed "s/\*\//\*---/g"|sed "s/\/\*/---\/\*/g" |tr "\-\-\-" "\n"|grep "\/\*"| tr "@" "\n" > commentedText
cat ./test/*.js | grep '\/\/' >> commentedText
cat commentedText
lines=$(cat commentedText|wc -l)
if [ $lines != 0 ];then
  read -p "you have some commented code, would you like to commit ? (y/n) : " confirmation
  if [ $confirmation == "y" ]; then
    git commit
  fi
  exit 1;
fi
git commit
