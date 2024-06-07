#!/bin/sh

value=$(playerctl metadata --format "{{position}}")

if [ $? -eq 0 ]; then
	echo $value
else
    echo "0"
fi
