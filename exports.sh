#!/usr/bin/env sh

PATH="$HOME/.files/bin";
PATH="$HOME/pykgr/builder/bin:$HOME/pykgr/library/bin:$PATH";
PATH="$PATH:$HOME/bin:$HOME/.heroku/bin";
PATH="$PATH:/snap/bin:/usr/games";
PATH="$PATH:/bin:/usr/bin:/sbin";

export PATH;

export LD_LIBRARY_PATH="/usr/local/cuda-10.2/lib64";
export PS1="\[\e[0;32m\][\[\e[0m\]\u@\[\033[01;31m\]\h \[\033[01;34m\]\w\[\e[0;32m\]]\[\e[0m\]$ ";

