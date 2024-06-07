#!/bin/sh

value=$(playerctl metadata --format "{{mpris:length}}")

if [ $? -eq 0 ]; then
	echo $value
else
    echo "1"
fi
