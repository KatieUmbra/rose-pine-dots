#!/bin/sh

value=$(playerctl metadata --format "{{duration(position)}}")

if [ $? -eq 0 ]; then
	echo $value
fi
