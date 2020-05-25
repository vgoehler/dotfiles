#!/usr/bin/fish

set LINES (snap refresh --list | wc -l)

if test $LINES -eq 0
    echo $LINES
else
    echo (math $LINES - 1)
end
