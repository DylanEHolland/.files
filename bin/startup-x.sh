#!/bin/bash

export HOME="/home/dylan";
. $HOME/.bashrc;
export DISPLAY=":1.0";

/bin/bash $HOME/.files/bin/displays.sh;
/bin/bash $HOME/.files/bin/steam;
/bin/bash $HOME/.files/bin/discord;
