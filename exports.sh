#!/usr/bin/env sh

export PYREPO="https://github.com/python/cpython";
export LOCAL_PYTHON_ENV_DIR="$HOME/.environ";
export LOCAL_PYTHON_VERSION="3.7";
export LOCAL_PYTHON_DIRECTORY="$HOME/.pythonbuild";
export LOCAL_PYTHON_SRC_DIRECTORY="/tmp/python-$LOCAL_PYTHON_VERSION";
export LOCAL_PYTHON_BUILD_DIRECTORY="/tmp/build";
export MAKEOPTS="-j12";

PATH="$HOME/.files/bin:$HOME/pykgr/bin:$HOME/pykgr/builder/bin";
PATH="$PATH:/snap/bin:$HOME/bin:$HOME/.heroku/bin";
PATH="$PATH:/bin:/usr/bin:/sbin";
PATH="$PATH:/usr/games";

export PATH;

export LD_LIBRARY_PATH="/usr/local/cuda-10.2/lib64";
export PS1="\[\e[0;32m\][\[\e[0m\]\u@\[\033[01;31m\]\h \[\033[01;34m\]\w\[\e[0;32m\]]\[\e[0m\]$ ";

