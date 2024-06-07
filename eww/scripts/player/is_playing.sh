#!/bin/sh

value=$(playerctl metadata --format "{{title}} - {{artist}}")

if [ $? -eq 0 ]; then
	echo $value
fi
