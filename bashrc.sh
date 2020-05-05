#!/usr/bin/env sh

source /etc/bashrc; # import system settings
source /etc/profile.d/bash_completion.sh;

# Load our dotfiles
for dot_file in $HOME/.files/{aliases,exports}.sh `ls $HOME/.files/etc/*`; 
do 
    source $dot_file; 
done;

# Load the API keys we don't want being open source (Tiingo, Tenquant, Reddit, etc)
if [ -d $LOCAL_PYTHON_ENV_DIR ]; then
    source $LOCAL_PYTHON_ENV_DIR/bin/activate; # use our local python environment
fi;

alias make='make $MAKEOPTS';
