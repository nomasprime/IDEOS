set backupdir=~/.vim/backup
set hidden
set nocompatible
set number

" Plugin Manager
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" Plugins
Bundle 'kien/ctrlp.vim'
