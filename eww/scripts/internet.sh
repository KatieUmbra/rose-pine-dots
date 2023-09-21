#!/bin/zsh

wget -q --spider https://google.com

if [ $? -eq 0 ]; then
	echo 0
else
	echo 1
fi
