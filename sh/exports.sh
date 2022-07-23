#!/usr/bin/env sh
export SHELL_NAME=`ps p $$ | grep -v COMMAND | awk '{print $5}'`;
export GOPATH="/home/dylan/.go";
export PATH="$HOME/.files/bin:/bin:/usr/bin:/sbin:/usr/sbin:/usr/games:/usr/local/bin:$HOME/bin";

if [ `uname` = "Linux" ]; then
    export PATH="$PATH:/usr/local/lib/node_modules/*/bin";
    export PROTON_ENABLE_NVAPI=1
else
    # MacOS 
    export PATH="$PATH:/opt/homebrew/bin";
    export PATH="/opt/homebrew/opt/llvm/bin:$PATH";

    ## LLVM
    export LDFLAGS="-L/opt/homebrew/opt/llvm/lib";
    export CPPFLAGS="-I/opt/homebrew/opt/llvm/include";

    ## Haskell
    [ -f "/Users/dylanholland/.ghcup/env" ] && source "/Users/dylanholland/.ghcup/env"
fi;

if [ "$SHELL_NAME" = "bash" ]; then
    export PS1="\[\e[0;32m\][\[\e[0m\]\u@\[\033[01;31m\]\h \[\033[01;34m\]\w\[\e[0;32m\]]\[\e[0m\]$ ";
fi;

[ -d ~/.nvm ] && source ~/.nvm/nvm.sh;
source $HOME/.cargo/env;
