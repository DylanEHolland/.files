#!/usr/bin/env sh

if [ -f "/etc/bashrc" ]; then
	source /etc/bashrc; # import system settings
fi;
source /etc/profile.d/bash_completion.sh;

ZS_FILE_URL="https://raw.githubusercontent.com/r4m0n/ZenStates-Linux/master/zenstates.py";
if ! [ -f "$HOME/bin/zenstates.py" ]; then
	if ! [ -d "$HOME/bin" ]; then
		mkdir "$HOME/bin";
	fi;
	cd $HOME/bin;
	wget -c "$ZS_FILE_URL";
	chmod +x zenstates.py;
	cd -;
fi;

# Load our dotfiles
for dot_file in $HOME/.files/{aliases,exports}.sh; 
do 
    source $dot_file; 
done;

