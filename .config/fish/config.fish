# set -x JAVA_HOME /usr/lib/jvm/java-11-openjdk-amd64
set -x JAVA_HOME /usr/lib/jvm/bellsoft-java8-full-amd64

set -x VIRTUALENVWRAPPER_PYTHON /usr/bin/python3
set -x WORKON_HOME $HOME/.virtualenvs
bash /usr/local/bin/virtualenvwrapper.sh

set PATH $HOME/.npm-global/bin $PATH
