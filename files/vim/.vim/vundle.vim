" Plugins (Vundle https://github.com/gmarik/vundle)
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

Bundle 'altercation/vim-colors-solarized'
Bundle 'gregsexton/gitv'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-git'
Bundle 'mattn/gist-vim'
Bundle 'pangloss/vim-javascript'
Bundle 'tpope/vim-fugitive'

filetype plugin indent on
