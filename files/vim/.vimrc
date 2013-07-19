set backupdir=~/.vim/backup
set hidden
set nocompatible
set number

" Plugin Manager
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

Bundle 'kien/ctrlp.vim'

Bundle 'altercation/vim-colors-solarized'
syntax enable
set background=dark
colorscheme solarized
