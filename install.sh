#!/bin/sh

# This script installs all my Vim environment : plugins, colors, syntax. Only what i need. 
# With this, I'm able to deploy my Vim environement on other systems in seconds.

VIMDIR="vim"

read -r -p "This will erase your .vim directory and your .vimrc. Are you sure ? [y/N] " response
case "$response" in

[yY][eE][sS]|[yY]) 

echo "[CLEANING]"
  rm -rf $HOME/.vimrc
  rm -rf $HOME/.vim/*

echo "[INSTALL]"
echo "°°°°°°°°  copy vimrc to ~/.vimrc"
cp vimrc ~/.vimrc

echo "°°°°°°°°  copy colors folder to ~/.$VIMDIR"
mkdir  ~/.$VIMDIR/colors
cp -rf colors/* ~/.$VIMDIR/colors/

echo "°°°°°°°°  init directories : autoload, bundle"
      
# Note on directories : 
# - autoload, bundle : vim plugin locations
# - tmp,backup : used to store tmp and backup files

mkdir -p ~/.$VIMDIR/tmp ~/.$VIMDIR/backup ~/.$VIMDIR/autoload ~/.$VIMDIR/bundle ~/.$VIMDIR/syntax && \
echo "°°°°°°°°  download and install --->  pathogen..."
curl -LSso ~/.$VIMDIR/autoload/pathogen.vim https://tpo.pe/pathogen.vim


echo "[INSTALL SYNTAX FILES]"
echo "°°°°°°°°  download and install --->  css.vim" 
git clone --quiet https://github.com/JulesWang/css.vim  ~/.$VIMDIR/syntax/css.vim


echo "[INSTALL PLUGINS]"
echo "°°°°°°°°  download and install ---> vim-sensible"
# Develop by Tim Pope: Think of sensible.vim as one step above 'nocompatible' mode: a universal set of defaults that (hopefully) everyone can agree on. https://github.com/tpope/vim-sensible
git clone --quiet https://github.com/tpope/vim-sensible.git ~/.$VIMDIR/bundle/vim-sensible

echo "°°°°°°°°  download and install ---> nerdtree"
# The NERDTree is a file system explorer for the Vim editor.  https://github.com/preservim/nerdtree
git  clone --quiet https://github.com/scrooloose/nerdtree.git ~/.$VIMDIR/bundle/nerdtree

# A plugin of NERDTree showing git status flags.
echo "°°°°°°°°  download and install ---> nerdtree-git-plugin"
git clone --quiet https://github.com/Xuyuanp/nerdtree-git-plugin.git  ~/.$VIMDIR/bundle/nerdtree-git-plugin


echo "°°°°°°°°  download and install ---> ctrlp.vim"
# Full path fuzzy file, buffer, mru, tag, ... finder for Vim.  https://kien.github.io/ctrlp.vim/
git  clone  --quiet https://github.com/ctrlpvim/ctrlp.vim.git ~/.$VIMDIR/bundle/ctrlp.vim


echo "°°°°°°°°  download and install ---> ack.vim"
# Run your favorite search tool from Vim, with an enhanced results list. https://github.com/mileszs/ack.vim
git  clone  --quiet https://github.com/mileszs/ack.vim.git ~/.$VIMDIR/bundle/ack.vim

echo "°°°°°°°°  download and install ---> bufexplorer"
# BufExplorer Plugin for Vim. https://github.com/jlanzarotta/bufexplorer
git  clone --quiet https://github.com/jlanzarotta/bufexplorer.git ~/.$VIMDIR/bundle/bufexplorer

echo "°°°°°°°°  download and install ---> gtfo"
# Opens the file manager or terminal at the directory of the current file in Vim. https://github.com/justinmk/vim-gtfo
git  clone --quiet https://github.com/justinmk/vim-gtfo.git ~/.$VIMDIR/bundle/gtfo


#echo "°°°°°°°°  download and install ---> vim-gitgutter"
# git  clone --quiet https://github.com/airblade/vim-gitgutter.git ~/.$VIMDIR/bundle/vim-gitgutter


echo "°°°°°°°°  download and install ---> snipmate.vim"
git  clone --quiet git://github.com/msanders/snipmate.vim.git ~/.$VIMDIR/bundle/snipmate.vim

echo "°°°°°°°°  download and install ---> vim-fugitive"
git  clone --quiet https://github.com/tpope/vim-fugitive.git ~/.$VIMDIR/bundle/vim-fugitive


echo "°°°°°°°°  download and install ---> vim-surround"
git  clone --quiet https://github.com/tpope/vim-surround.git ~/.$VIMDIR/bundle/vim-surround


echo "°°°°°°°°  download and install ---> auto-pairs"
git  clone --quiet git://github.com/jiangmiao/auto-pairs.git ~/.$VIMDIR/bundle/auto-pairs


echo "°°°°°°°°  download and install ---> vim-closetag"
git  clone --quiet https://github.com/alvan/vim-closetag.git ~/.$VIMDIR/bundle/vim-closetag 
echo "°°°°°°°°  download and install ---> vim-flagship"
git  clone --quiet git://github.com/tpope/vim-flagship.git ~/.$VIMDIR/bundle/vim-flagship
echo "°°°°°°°°  download and install ---> vim-javascript"
git clone --quiet https://github.com/pangloss/vim-javascript.git ~/.$VIMDIR/bundle/vim-javascript
echo "°°°°°°°°  download and install ---> html5.vim"
git clone --quiet https://github.com/othree/html5.vim.git ~/.$VIMDIR/bundle/html5.vim
echo "°°°°°°°°  download and install ---> far.vim"
git clone --quiet https://github.com/brooth/far.vim.git ~/.$VIMDIR/bundle/far.vim
echo "°°°°°°°°  download and install ---> vim-jsx"
git clone --quiet https://github.com/mxw/vim-jsx.git  ~/.$VIMDIR/bundle/vim-jsx.vim
echo "°°°°°°°°  download and install ---> emmet"
git clone --quiet https://github.com/mattn/emmet-vim.git ~/.$VIMDIR/bundle/emmet-vim

echo "°°°°°°°°  download and install ---> vim-airline"
git clone --quiet https://github.com/vim-airline/vim-airline ~/.$VIMDIR/bundle/vim-airline


echo "°°°°°°°°  download and install ---> vim-dev-icons and vim-nerdtree-syntax-highlight"
git clone --quiet https://github.com/ryanoasis/vim-devicons ~/.$VIMDIR/bundle/vim-devicons
git clone --quiet https://github.com/tiagofumo/vim-nerdtree-syntax-highlight.git ~/.$VIMDIR/bundle/vim-nerdtree-syntax-highlight


echo "[DONE. READY TO CODE]"

echo "        ________ ++"     ________
echo "       /VVVVVVVV\++++  /VVVVVVVV\ "
echo "       \VVVVVVVV/++++++\VVVVVVVV/"
echo "        |VVVVVV|++++++++/VVVVV/'"
echo "        |VVVVVV|++++++/VVVVV/' "
echo "       +|VVVVVV|++++/VVVVV/'+ "
echo "     +++|VVVVVV|++/VVVVV/'+++++"
echo "   +++++|VVVVVV|/VVV___++++++++++ "
echo "     +++|VVVVVVVVVV/##/ +_+_+_+_ "
echo "       +|VVVVVVVVV___ +/#_#,#_#,\ "
echo "        |VVVVVVV//##/+/#/+/#/'/#/ "
echo "        |VVVVV/'+/#/+/#/+/#/ /#/ "
echo "        |VVV/'++/#/+/#/ /#/ /#/ "
echo "        'V/'  /##//##//##//###/ "



 ;;
*)
 ;;
esac
