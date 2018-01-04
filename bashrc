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

###
# Prompt customizations
###
export PROMPT_DIRTRIM=2

function __prompt_status() {
	echo -ne "\033[0m${?}\033[0m "
#   if [ $? -eq 0 ];
#   then echo -ne "\033[0m${?}\033[0m "
#   else echo -ne "\033[1;31m${?}\033[0m "
#   fi
}

use_color=true
function __prompt() {
	export GIT_PS1_SHOWDIRTYSTATE=1
	export GIT_PS1_SHOWSTASHSTATE=1
	export GIT_PS1_SHOWUNTRACKEDFILES=1
#   export PS1='\[\033[1;37m\][\[\033[1;32m\]\u\[\033[0m\]@\[\033[1;35m\]\h\[\033[0m\] $(__prompt_status)\[\033[1;34m\]\w\[\033[0;33m\]$(declare -f __git_ps1 > /dev/null && __git_ps1 " %s")\[\033[1;37m\]]\[\033[0m\]\$ '
	export PS1='\[\033[1;37m\][\[\033[1;32m\]\u\[\033[0m\]@\[\033[1;35m\]\h\[\033[0m\] ${?} \[\033[1;34m\]\w\[\033[0;33m\]$(declare -f __git_ps1 > /dev/null && __git_ps1 " %s")\[\033[1;37m\]]\[\033[0m\]\$ '
}
PROMPT_COMMAND=__prompt
#   export PS1="[\u@\h \W]\\$ "

###
# Up arrow reverse query
###
case "$-" in
*i*)
	bind '"\x1b\x5b\x41":history-search-backward' 
	bind '"\x1b\x5b\x42":history-search-forward' 
esac

###
# history options
###
export HISTCONTROL=ignoredups:erasedups:ignorespace
export HISTSIZE=1000000
export HISTFILESIZE=$HISTSIZE
shopt -s histappend

history() {
	_bash_history_sync
	builtin history "$@"
}

_bash_history_sync() {
	builtin history -a
#   HISTFILESIZE=$HISTFILESIZE
#   builtin history -c
#   builtin history -r
}
#export PROMPT_COMMAND=_bash_history_sync


# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -d /etc/profile.d ]; then
  for i in /etc/profile.d/*.sh; do
    if [ -r $i ]; then
      . $i
    fi
  done
  unset i
fi
export EMAIL=djarvis@kmbs.konicaminolta.us
export LIBVIRT_DEFAULT_URI=qemu+ssh://dan@lebowski.sep.net/system

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
