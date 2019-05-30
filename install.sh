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

if [ -h "${HOME}/.config/fish/config.fish" ]; then
	rm "${HOME}/.config/fish/config.fish"
fi;

if [ -h "${HOME}/.config/rofi/config" ]; then
	rm "${HOME}/.config/rofi/config"
fi;


ln -s ${BASE}/vim ${HOME}/.vim
ln -s ${BASE}/i3config ${HOME}/.i3/config
ln -s ${BASE}/i3status.conf ${HOME}/.i3status.conf
mkdir -p ${HOME}/.config/rofi
ln -s ${BASE}/rofi-config ${HOME}/.config/rofi/config
ln -fs ${BASE}/Xdefaults ${HOME}/.Xdefaults
ln -fs ${BASE}/vimrc ${HOME}/.vimrc
ln -fs ${BASE}/bashrc ${HOME}/.bashrc
ln -fs ${BASE}/liquidpromptrc ${HOME}/.config/liquidpromptrc
ln -fs ${BASE}/gitconfig ${HOME}/.gitconfig
ln -fs ${BASE}/bin/vb ${HOME}/.local/bin/vb
ln -s ${BASE}/fish/config.fish ${HOME}/.config/fish/config.fish
ln -s ${BASE}/fish/functions/fish_prompt.fish ${HOME}/.config/fish/functions/fish_prompt.fish
ln -s ${BASE}/fish/functions/fish_right_prompt.fish ${HOME}/.config/fish/functions/fish_right_prompt.fish
ln -s ${BASE}/fish/functions/nvm.fish ${HOME}/.config/fish/functions/nvm.fish
ln -s ${BASE}/fish/functions/mfp_forward.fish ${HOME}/.config/fish/functions/mfp_forward.fish
ln -s ${BASE}/fish/functions/mfp_forward_sep.fish ${HOME}/.config/fish/functions/mfp_forward_sep.fish
