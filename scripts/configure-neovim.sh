#!/bin/bash
plugin () {
  echo "Installing $1"
  git clone https://github.com/$1 $1
  echo "set runtimepath^=$PLUGIN_PATH/$1" >> $NVIM_PATH/extra.vim
}

echo "Creating alias: vim -> nnvim"

cat <<- 'EOF' >> $HOME/.bashrc
  alias vim='nvim'
EOF

PLUGIN_PATH=$NVIM_PATH/extra
echo "Installing plugins to $PLUGIN_PATH"
mkdir -p $PLUGIN_PATH
cd $PLUGIN_PATH

# Install plugins
plugin 'gioele/vim-autoswap'
plugin 'scrooloose/syntastic'
plugin 'Shougo/deoplete.nvim'
plugin 'tpope/vim-fugitive'
plugin 'airblade/vim-gitgutter'
plugin 'SirVer/ultisnips'
plugin 'altercation/vim-colors-solarized'

# Copy plug-ins and plug-in config
cat <<- 'EOF' >> "$NVIM_PATH/extra.vim"
" Pretty colors
colorscheme solarized
set background=dark      

" Use deoplete.
let g:deoplete#enable_at_startup = 1
EOF

plugin 'kien/ctrlp.vim'
plugin 'scrooloose/nerdtree'

echo "source $NVIM_PATH/extra.vim" >> "$NVIM_PATH/init.vim"

nvim +UpdateRemotePlugins +qall

