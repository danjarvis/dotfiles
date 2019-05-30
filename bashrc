# .bashrc
shopt -s checkwinsize

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

source ~/.nvm/nvm.sh

# User specific aliases and functions
function sec {
	export DEBFULLNAME="Konica Minolta Business Solutions, Solutions Engineering Center"
	export DEBEMAIL="sec@kmbs.konicaminolta.us"
}

###
# ssh port forwarding for hopi
###
function mfp_forward() {
	sudo ssh -L 8090:$1:8090 -L8091:$1:8091 -L443:$1:443 -L80:$1:80 -L50003:$1:50003 -L50001:$1:50001 dan@dev3.sec.kmbs.us
}

function mfp_forward_sep() {
	sudo ssh -L 8090:$1:8090 -L8091:$1:8091 -L443:$1:443 -L80:$1:80 -L50003:$1:50003 -L50001:$1:50001 dan@polaris.sep.net
}

# Liquid Prompt
# https://github.com/nojhan/liquidprompt
[[ $- = *i* ]] && source ~/Projects/liquidprompt/liquidprompt

# Aliases
alias ls='ls --color=auto'
alias ll='ls -lh'

# History
shopt -s histappend
shopt -s cmdhist

HISTFILESIZE=1000000
HISTSIZE=1000000
HISTCONTROL=ignoreboth
HISTIGNORE='ls:bg:fg:history'

export EMAIL=djarvis@kmbs.konicaminolta.us
export LIBVIRT_DEFAULT_URI=qemu+ssh://dan@lebowski.sep.net/system
