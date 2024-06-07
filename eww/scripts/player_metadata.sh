#!/bin/sh

metadata=$(playerctl metadata --format "{{status}}" &> /dev/null)

if [ $? -eq 0 ]; then
	echo $metadata
fi
