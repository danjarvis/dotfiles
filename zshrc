# History
HISTFILE=~/.histfile
HISTSIZE=1000000
SAVEHIST=1000000
setopt appendhistory

# Beep
unsetopt beep

# Command completion (press tab twice)
autoload -Uz compinit
compinit
zstyle :compinstall filename '/home/dan/.zshrc'
zstyle ':completion:*' menu select

# NVM
source ~/.nvm/nvm.sh

# ssh port forwarding for hopi
function mfp_forward() {
    sudo ssh -L 8090:$1:8090 -L8091:$1:8091 -L443:$1:443 -L80:$1:80 -L50003:$1:50003 -L50001:$1:50001 dan@dev3.sec.kmbs.us
}
function mfp_forward_sep() {
    sudo ssh -L 8090:$1:8090 -L8091:$1:8091 -L443:$1:443 -L80:$1:80 -L50003:$1:50003 -L50001:$1:50001 dan@polaris.sep.net
}

# Liquid Prompt https://github.com/nojhan/liquidprompt
[[ $- = *i* ]] && source ~/Projects/liquidprompt/liquidprompt

# Aliases
alias ls='ls --color=auto'
alias ll='ls -lh'

# OH MY ZSH
#
# Path to your oh-my-zsh installation.
ZSH=/usr/share/oh-my-zsh/

plugins=(
	zsh-autosuggestions
)

source "$HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh
