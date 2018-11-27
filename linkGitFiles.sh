#! /usr/local/bin/zsh 
git init
ln -s ~/bin/gitFiles/.gitignore .gitignore
ln -s ~/bin/gitFiles/pre-commit.sh ./.git/hooks/pre-commit
chmod +x ./.git/hooks/pre-commit
