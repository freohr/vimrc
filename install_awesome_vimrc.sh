#!/bin/sh
set -e

cd ~/.vim_runtime

echo 'set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry' > ~/.vimrc

echo "Setting symlink for NeoVim"
ln -s ~/.vimrc ~/.config/nvim/init.vim

echo "Setting plugins up for the first time"
python update_plugins.py

echo ""
echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"
