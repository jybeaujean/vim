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

echo "[INSTALL COLOR THEME]"
echo "°°°°°°°°  download and install --->  vim-hybrid-material" 
git clone https://github.com/kristijanhusak/vim-hybrid-material ~/.vim/bundle/vim-hybrid-material


echo "[INSTALL SYNTAX FILES]"
echo "°°°°°°°°  download and install --->  css.vim" 
git clone --quiet https://github.com/JulesWang/css.vim  ~/.$VIMDIR/syntax/css.vim


echo "[INSTALL PLUGINS]"
echo "°°°°°°°°  download and install ---> vim-sensible"
# Develop by Tim Pope: Think of sensible.vim as one step above 'nocompatible' mode: a universal set of defaults that (hopefully) everyone can agree on. 
# https://github.com/tpope/vim-sensible
git clone --quiet https://github.com/tpope/vim-sensible.git ~/.$VIMDIR/bundle/vim-sensible


echo "°°°°°°°°  download and install ---> vim-fugitive"
# Developed by Tim Pope. Fugitive is the premier Vim plugin for Git. Or maybe it's the premier Git plugin for Vim? Either way, it's "so awesome, it should be illegal". That's why it's called Fugitive. 
# https://github.com/tpope/vim-fugitive
git  clone --quiet https://github.com/tpope/vim-fugitive.git ~/.$VIMDIR/bundle/vim-fugitive


echo "°°°°°°°°  download and install ---> nerdtree"
# The NERDTree is a file system explorer for the Vim editor.  
# https://github.com/preservim/nerdtree
git  clone --quiet https://github.com/scrooloose/nerdtree.git ~/.$VIMDIR/bundle/nerdtree

echo "°°°°°°°°  download and install ---> ctrlp.vim"
# Full path fuzzy file, buffer, mru, tag, ... finder for Vim.  
# https://kien.github.io/ctrlp.vim/
git  clone  --quiet https://github.com/ctrlpvim/ctrlp.vim.git ~/.$VIMDIR/bundle/ctrlp.vim


echo "°°°°°°°°  download and install ---> ack.vim"
# Run your favorite search tool from Vim, with an enhanced results list. 
# https://github.com/mileszs/ack.vim
git  clone  --quiet https://github.com/mileszs/ack.vim.git ~/.$VIMDIR/bundle/ack.vim

echo "°°°°°°°°  download and install ---> bufexplorer"
# BufExplorer Plugin for Vim. 
# https://github.com/jlanzarotta/bufexplorer
git  clone --quiet https://github.com/jlanzarotta/bufexplorer.git ~/.$VIMDIR/bundle/bufexplorer

echo "°°°°°°°°  download and install ---> gtfo"
# Opens the file manager or terminal at the directory of the current file in Vim. 
# https://github.com/justinmk/vim-gtfo
git  clone --quiet https://github.com/justinmk/vim-gtfo.git ~/.$VIMDIR/bundle/gtfo

echo "°°°°°°°°  download and install ---> snipmate.vim"
# SnipMate aims to provide support for textual snippets, similar to TextMate or other Vim plugins like UltiSnips. For example, in C, typing for<tab> could be expanded to
# https://github.com/garbas/vim-snipmate
git clone --quiet https://github.com/tomtom/tlib_vim.git  ~/.$VIMDIR/bundle/tlib_vim
git clone --quiet https://github.com/MarcWeber/vim-addon-mw-utils.git  ~/.$VIMDIR/bundle/vim-addon-mw-utils
git clone --quiet https://github.com/garbas/vim-snipmate.git ~/.$VIMDIR/bundle/snipmate.vim
git clone --quiet https://github.com/honza/vim-snippets.git ~/.$VIMDIR/bundle/vim-snippets



echo "°°°°°°°°  download and install ---> vim-gitgutter"
git  clone --quiet https://github.com/airblade/vim-gitgutter.git ~/.$VIMDIR/bundle/vim-gitgutter



echo "°°°°°°°°  download and install ---> vim-surround"
# Surround.vim is all about "surroundings": parentheses, brackets, quotes, XML tags, and more. The plugin provides mappings to easily delete, change and add such surroundings in pairs.
# https://github.com/tpope/vim-surround
# V -> visual mode and selection  -    S  <p>  --> surround selection with <p> tag.  
git  clone --quiet https://github.com/tpope/vim-surround.git ~/.$VIMDIR/bundle/vim-surround


echo "°°°°°°°°  download and install ---> auto-pairs"
# Insert or delete brackets, parens, quotes in pair.
# https://github.com/jiangmiao/auto-pairs
git  clone --quiet git://github.com/jiangmiao/auto-pairs.git ~/.$VIMDIR/bundle/auto-pairs


echo "°°°°°°°°  download and install ---> vim-closetag"
# https://github.com/alvan/vim-closetag
git  clone --quiet https://github.com/alvan/vim-closetag.git ~/.$VIMDIR/bundle/vim-closetag 


echo "°°°°°°°°  download and install ---> vim-flagship"
# Flagship provides a Vim status line and tab line that are both easily customizable by the user and extensible by other plugins.
# https://github.com/tpope/vim-flagship
git  clone --quiet git://github.com/tpope/vim-flagship.git ~/.$VIMDIR/bundle/vim-flagship


echo "°°°°°°°°  download and install ---> vim-javascript"
# JavaScript bundle for vim, this bundle provides syntax highlighting and improved indentation.
git clone --quiet https://github.com/pangloss/vim-javascript.git ~/.$VIMDIR/bundle/vim-javascript


echo "°°°°°°°°  download and install ---> html5.vim"
git clone --quiet https://github.com/othree/html5.vim.git ~/.$VIMDIR/bundle/html5.vim


echo "°°°°°°°°  download and install ---> far.vim"
# git clone --quiet https://github.com/brooth/far.vim.git ~/.$VIMDIR/bundle/far.vim

echo "°°°°°°°°  download and install ---> emmet"
git clone --quiet https://github.com/mattn/emmet-vim.git ~/.$VIMDIR/bundle/emmet-vim

echo "°°°°°°°°  download and install ---> vim-airline"
# When the plugin is correctly loaded, there will be a nice statusline at the bottom of each vim window. https://github.com/vim-airline/vim-airline
git clone --quiet https://github.com/vim-airline/vim-airline ~/.$VIMDIR/bundle/vim-airline


echo "°°°°°°°°  download and install ---> vim-dev-icons and vim-nerdtree-syntax-highlight"
# https://github.com/tiagofumo/vim-nerdtree-syntax-highlight
# git clone --quiet https://github.com/ryanoasis/vim-devicons ~/.$VIMDIR/bundle/vim-devicons
# git clone --quiet https://github.com/tiagofumo/vim-nerdtree-syntax-highlight.git ~/.$VIMDIR/bundle/vim-nerdtree-syntax-highlight


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
