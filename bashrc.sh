#!/usr/bin/env sh

source /etc/bashrc; # import system settings

# Load our dotfiles
for dot_file in $HOME/.files/{aliases,exports}.sh `ls $HOME/.files/etc/*`; 
do 
    source $dot_file; 
done;

# Load the API keys we don't want being open source (Tiingo, Tenquant, Reddit, etc)
#source $HOME/.api_keys.sh
source ~/.environment/bin/activate; # use our local python environment
