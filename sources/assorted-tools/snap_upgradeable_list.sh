#!/usr/bin/fish

set LINES (snap refresh --list | wc -l)

echo (math $LINES - 1)
