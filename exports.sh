#!/usr/bin/env sh
export SHELL_NAME=`ps p $$ | grep -v COMMAND | awk '{print $5}'`;
export GOPATH="/home/dylan/.go";
export PATH="$HOME/.files/bin:/bin:/usr/bin:/sbin:/usr/sbin:/usr/games:/usr/local/bin:$HOME/bin";

if [ `uname` = "Linux" ]; then
    export PATH="$PATH:$HOME/.build/builder/bin:$HOME/.build/packages/bin";
    export PATH="$PATH:$HOME/.local/share/JetBrains/Toolbox/apps/PyCharm-C/ch-0/211.7628.24/bin";
    export PATH="$PATH:/usr/local/lib/node_modules/*/bin";
    export PATH=$PATH:$GOPATH;
    export PATH=$PATH:$GOPATH/bin;
    export PATH="/usr/local/cuda-10.0/bin:/usr/local/cuda/bin:$PATH:/home/dylan/.local/bin:/snap/bin";
    export LD_LIBRARY_PATH="/usr/local/cuda/lib64:/usr/local/cuda-10.0/lib64";
    export PROTON_ENABLE_NVAPI=1
fi;

if [ "$SHELL_NAME" = "bash" ]; then
    export PS1="\[\e[0;32m\][\[\e[0m\]\u@\[\033[01;31m\]\h \[\033[01;34m\]\w\[\e[0;32m\]]\[\e[0m\]$ ";
fi;
