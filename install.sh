#!/bin/sh

BASE=$(pwd)


if [ -h "${HOME}/.vim" ]; then
	rm "${HOME}/.vim"
fi;

if [ -h "${HOME}/.config/i3" ]; then
	rm "${HOME}/.config/i3"
fi;

if [ -h "${HOME}/.config/i3status" ]; then
	rm "${HOME}/.config/i3status"
fi;


ln -s ${BASE}/vim ${HOME}/.vim
ln -s ${BASE}/config/i3 ${HOME}/.config/i3
ln -s ${BASE}/config/i3status ${HOME}/.config/i3status
ln -fs ${BASE}/Xdefaults ${HOME}/.Xdefaults
ln -fs ${BASE}/vim/vimrc ${HOME}/.vimrc
ln -fs ${BASE}/bashrc ${HOME}/.bashrc
ln -fs ${BASE}/gitconfig ${HOME}/.gitconfig
