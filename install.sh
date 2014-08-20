#!/bin/sh


# This script installs all my Vim environment : plugins, colors, syntax. Only what i need. 
# With this, I'm able to deploy my Vim environement on other systems in seconds.

VIMDIR="vim"
echo "[CLEANING]"
rm -rf $HOME/.vimrc
rm -rf $HOME/.vim/*

echo "[INSTALL]"
echo "°°°°°°°°  copy vimrc to ~/.vimrc"
cp vimrc ~/.vimrc

echo "°°°°°°°°  copy colors folder to ~/.$VIMDIR"
cp -rf colors ~/.$VIMDIR/

echo "°°°°°°°°  init directories : autoload, bundle"
# note on directories : 
# - autoload, bundle : vim plugin locations
# - tmp,backup : used to store tmp and backup files

mkdir -p ~/.$VIMDIR/tmp ~/.$VIMDIR/backup ~/.$VIMDIR/autoload ~/.$VIMDIR/bundle ~/.$VIMDIR/syntax && \
echo "°°°°°°°°  download and install --->  pathogen..."
curl -LSso ~/.$VIMDIR/autoload/pathogen.vim https://tpo.pe/pathogen.vim


echo "[INSTALL SYNTAX FILES]"
echo "°°°°°°°°  download and install --->  css.vim"
git clone https://github.com/JulesWang/css.vim  ~/.$VIMDIR/syntax/css.vim


echo "[INSTALL PLUGINS]"
echo "°°°°°°°°  download and install ---> ctrlp.vim"
git clone https://github.com/kien/ctrlp.vim.git ~/.$VIMDIR/bundle/ctrlp.vim
echo "°°°°°°°°  download and install ---> ack.vim"
git clone https://github.com/mileszs/ack.vim.git ~/.$VIMDIR/bundle/ack.vim
echo "°°°°°°°°  download and install ---> bufexplorer"
git clone https://github.com/jlanzarotta/bufexplorer.git ~/.$VIMDIR/bundle/bufexplorer
echo "°°°°°°°°  download and install ---> nerdtree"
git clone https://github.com/scrooloose/nerdtree.git ~/.$VIMDIR/bundle/nerdtree
echo "°°°°°°°°  download and install ---> snipmate.vim"
git clone https://github.com/tomtom/tlib_vim.git ~/.$VIMDIR/bundle/tlib_vim
git clone https://github.com/MarcWeber/vim-addon-mw-utils.git ~/.$VIMDIR/bundle/vim-addon-mw-utils
git clone https://github.com/garbas/vim-snipmate.git ~/.$VIMDIR/bundle/snipmate.vim

echo "°°°°°°°°  download and install ---> vim-fugitive"
git clone https://github.com/tpope/vim-fugitive.git ~/.$VIMDIR/bundle/vim-fugitive
echo "°°°°°°°°  download and install ---> vim-surround"
git clone https://github.com/tpope/vim-surround.git ~/.$VIMDIR/bundle/vim-surround
echo "°°°°°°°°  download and install ---> vim-gitgutter"
git clone https://github.com/airblade/vim-gitgutter.git ~/.$VIMDIR/bundle/vim-gitgutter
echo "°°°°°°°°  download and install ---> auto-pairs"
git clone git://github.com/jiangmiao/auto-pairs.git ~/.$VIMDIR/bundle/auto-pairs




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




