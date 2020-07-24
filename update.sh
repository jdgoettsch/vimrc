#!/bin/sh

for DIR in `grep 'path =' .gitmodules | awk '{print $3}'`
do
	echo "$DIR" && cd "$DIR" && git fetch && git pull origin master
	cd ~/Documents/workspace/vimrc
done
