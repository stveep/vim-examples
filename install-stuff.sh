#!/bin/bash
# Make directories and install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Add pathogen package loading on vim startup
echo "execute pathogen#infect()" >> ~/.vimrc

# Install some plugins
cd ~/.vim/bundle && \
# Vim-rails
git clone git://github.com/tpope/vim-rails.git && \
git clone git://github.com/tpope/vim-bundler.git && \

# Snipmate
git clone https://github.com/tomtom/tlib_vim.git && \
git clone https://github.com/MarcWeber/vim-addon-mw-utils.git && \
git clone https://github.com/garbas/vim-snipmate.git && \

# Default snippets (including ruby)
git clone https://github.com/honza/vim-snippets.git

vim +Helptags +qall
