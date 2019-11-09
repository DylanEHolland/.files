#!/usr/bin/env sh
#
# Zenstates comes from https://github.com/r4m0n/ZenStates-Linux
#
#   Needed to fix annoying freeze on Ryzen + Fedora (maybe all Linux?)

sudo python $HOME/bin/zenstates.py --c6-disable &> /dev/null;