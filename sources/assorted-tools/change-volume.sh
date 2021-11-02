#!/usr/bin/fish

# usage
# executable {volume|mute} {+|-}

set SINK_NR (pactl list sinks | sed -n '{N; s/^Sink #\([0-9]*\).*State: RUNNING/\1/p ; D}')

if [ $argv[1] = "volume" ]
    if [ $argv[2] = "+" ]
        set PARAMETER "+5%"
    else
        set PARAMETER "-5%"
    end
else if [ $argv[1] = "mute" ]
    set PARAMETER "toggle"
else
    exit -1
end

pactl set-sink-$argv[1] $SINK_NR $PARAMETER
