#!/usr/bin/env bash

for dotfile in .bash_profile .bashrc .gitconfig ; do
	here_dotfile=$(pwd)/$dotfile
	home_dotfile=$HOME/$dotfile

	if [ ! -h $home_dotfile ]; then
		mv -f $home_dotfile $here_dotfile &> /dev/null
		ln -sv $here_dotfile $home_dotfile
	fi
done

curl -s https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash > ~/.git-completion.bash

git status -s

