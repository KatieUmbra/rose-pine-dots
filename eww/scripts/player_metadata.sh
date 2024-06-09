#!/bin/sh

metadata=$(playerctl metadata --format "{{status}}")

if [ $? -eq 0 ]; then
	echo $metadata
fi
