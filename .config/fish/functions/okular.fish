# shadowing okular as it produces error, and I don't like the foreground blocking behaviour
function okular
    echo "Running okular from fish script; Suppressing Errors"
    /snap/bin/okular 2>/dev/null $argv &
end
