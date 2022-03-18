#!/usr/bin/env sh

if [ -f "/etc/bashrc" ]; then
	source /etc/bashrc; # import system settings
fi;
source /etc/profile.d/bash_completion.sh;

if ! [ -d "$HOME/bin" ]; then
	mkdir "$HOME/bin";
fi;

# Load our dotfiles
for dot_file in $HOME/.files/{aliases,exports}.sh; 
do 
    source $dot_file; 
done;

