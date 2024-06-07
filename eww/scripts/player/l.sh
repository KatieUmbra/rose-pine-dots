#!/bin/sh

value=$(playerctl metadata --format "{{duration(mpris:length)}}")

if [ $? -eq 0 ]; then
	echo $value
fi
