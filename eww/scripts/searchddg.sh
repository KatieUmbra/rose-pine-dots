#!/bin/zsh

term=$(</home/Katie/.config/eww/search)
firefox --new-tab --url "https://www.duckduckgo.com/?q=$term"
