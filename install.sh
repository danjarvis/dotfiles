#!/bin/sh

BASE=$(pwd)


if [ -h "${HOME}/.vim" ]; then
	rm "${HOME}/.vim"
fi;

if [ -h "${HOME}/.i3/config" ]; then
	rm "${HOME}/.i3/config"
fi;

if [ -h "${HOME}/.i3status.conf" ]; then
	rm "${HOME}/.i3status.conf"
fi;


ln -s ${BASE}/vim ${HOME}/.vim
ln -s ${BASE}/i3config ${HOME}/.i3/config
ln -s ${BASE}/i3status.conf ${HOME}/.i3status.conf
ln -fs ${BASE}/Xdefaults ${HOME}/.Xdefaults
ln -fs ${BASE}/vimrc ${HOME}/.vimrc
ln -fs ${BASE}/bashrc ${HOME}/.bashrc
ln -fs ${BASE}/gitconfig ${HOME}/.gitconfig
