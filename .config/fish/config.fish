set -x JAVA_HOME /usr/lib/jvm/java-11-openjdk-amd64

set -x VIRTUALENVWRAPPER_PYTHON /usr/bin/python3
set -x WORKON_HOME $HOME/.virtualenvs
set -x PROJECT_HOME $HOME/sources
bash $HOME/.local/bin/virtualenvwrapper.sh

set PATH $HOME/.npm-global/bin $PATH
set PATH $HOME/.local/bin $PATH
umask 002


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/vgoehler/Applications/anaconda3/bin/conda
    eval /home/vgoehler/Applications/anaconda3/bin/conda "shell.fish" "hook" $argv | source
end
# <<< conda initialize <<<

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
