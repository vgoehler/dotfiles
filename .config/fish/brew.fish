## From /home/linuxbrew/.linuxbrew/bin/brew shellenv
set -gx HOMEBREW_PREFIX     "/home/linuxbrew/.linuxbrew"
set -gx HOMEBREW_CELLAR     "/home/linuxbrew/.linuxbrew/Cellar"
set -gx HOMEBREW_REPOSITORY "/home/linuxbrew/.linuxbrew/Homebrew"
set -g fish_user_paths "/home/linuxbrew/.linuxbrew/bin" "/home/linuxbrew/.linuxbrew/sbin" $fish_user_paths
set -q MANPATH ; or set MANPATH  ''; set -gx MANPATH  "/home/linuxbrew/.linuxbrew/share/man"  $MANPATH
set -q INFOPATH; or set INFOPATH ''; set -gx INFOPATH "/home/linuxbrew/.linuxbrew/share/info" $INFOPATH

