# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi
if [ -d $HOME/.local/bin ]; then
	PATH="$HOME/.local/bin:$PATH"
fi
if [ -d $HOME/.cabal/bin ]; then
	PATH="$HOME/.cabal/bin:$PATH"
fi
if [ -d "/usr/sbin" ] ; then
    PATH="/usr/sbin:$PATH"
fi
if [ -d "/sbin" ] ; then
    PATH="/sbin:$PATH"
fi

export LANGUAGE="en_US:en"
export LC_MESSAGES="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"
export ENSCRIPT="-DDuplex:true -2Gr"
export EDITOR="vim"
export BROWSER="/usr/bin/firefox"
export TAR_OPTIONS="-av"
export FT2_SUBPIXEL_HINTING=1
export EMAIL=djarvis@kmbs.konicaminolta.us
export LIBVIRT_DEFAULT_URI=qemu+ssh://dan@lebowski.sep.net/system
export ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"
