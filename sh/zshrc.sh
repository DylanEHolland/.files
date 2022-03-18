export ZSH="$HOME/.oh-my-zsh";

if [ `uname` = "Linux" ]; then
    ZSH_THEME="clean"
else
    ZSH_THEME="apple" 
fi; 

CASE_SENSITIVE="true"
DISABLE_UPDATE_PROMPT="true"
export UPDATE_ZSH_DAYS=30
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh
export MANPATH="/usr/local/man:$MANPATH"
unsetopt share_history;

__git_files () { 
    _wanted files expl 'local files' _files     
}

source ~/.files/sh/exports.sh;