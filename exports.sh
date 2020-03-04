#!/usr/bin/env sh

export LC_ALL="C.utf8";
export PS1="\[\e[0;32m\][\[\e[0m\]\u@\[\033[01;31m\]\h \[\033[01;34m\]\w\[\e[0;32m\]]\[\e[0m\]$ ";
export PYTHONPATH="/home/dylan/src/business/Finance/edgelord/:/home/dylan/src/business/Finance/FinancialModelingPrep/";
export GOPATH="$HOME/.goenvironment";
export PATH="$HOME/bin:$HOME/.files/bin:/snap/bin:$HOME/.local/bin:/bin:/usr/bin:/sbin:/usr/sbin:$HOME/.heroku/bin/";
export DATASERVER_STOCK_DIRECTORY="/home/dylan/stock_data";
export CRAWLER_DATA="/tmp/crawler";
. ~/.poetry/env;
