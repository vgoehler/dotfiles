# shadowing libreoffice as it produces error, and I don't like the foreground blocking behaviour
function libreoffice
    echo "Running libreoffice from fish script; Suppressing Errors, Suppressing Std Out, detaching"
    nohup /snap/bin/libreoffice 2>/dev/null 1>/dev/null $argv &
end

