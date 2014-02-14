" Vim, rather than Vi (needs to be set first - affects all other settings)
set nocompatible

" Code Completion
set wildignore=*.o,*.obj,*~ " File patterns to ignore (TODO Should these be moved out of vimrc?)
set wildignore+=*vim/backup*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif
set wildmenu " Command-line completion operates in enchanced mode
set wildmode=list:longest " Completion mode that is used for the character specified with 'wildchar'

" Command and Status
set history=9999 " Command line history
set laststatus=2 " When the last window will have a status line (0 - never; 1 - at least two windows; 2 - always)
set showcmd " Show incomplete commands
set visualbell " Prefer visual to audial feedback

" Cursor
set cursorline " Highlight current line
set gcr=a:blinkon0 " Disable cursor bliking

" Files and Syntax
set autoread " When a file has been detected to have been changed outside of Vim and it has not been changed inside of Vim, automatically read it again
set backup " Create backup files
set backupdir=~/.vim/backup " Backup files dir
set directory=~/.vim/temp " Swap files dir
set hidden " Allow hidden buffers
set list listchars=tab:▸\ ,trail:· " Show tabs and trailing spaces
set showmatch " When a bracket is inserted, briefly jump to the matching one
set undodir=~/.vim/undo " Undo files dir
set undofile " Create undo files
silent !mkdir ~/.vim/backup > /dev/null 2>&1
silent !mkdir ~/.vim/temp > /dev/null 2>&1
silent !mkdir ~/.vim/undo > /dev/null 2>&1
syntax on

" Folding
set foldmethod=indent " The kind of folding used for the current window
set foldnestmax=3 " Sets the maximum nesting of folds for the indent and syntax methods
set nofoldenable " All folds are open

" Identation
set autoindent " Copy indent from current line when starting new line
set expandtab " Use the appropriate number of spaces to insert a <Tab>
set shiftwidth=4 " Number of spaces to use for each step (auto)indent
set smartindent " Do smart autoindenting when starting a new line
set smarttab " When on a <Tab> in front of a line inserts blanks according to 'shiftwidth'
set softtabstop=4 " Number of spaces that a <Tab> counts for while performing editing operations, like inserting a <Tab> or using <BS>
set tabstop=4 " Number of spaces that a <Tab> in the file counts for

" Keys
let mapleader="," " Remap leader key to ,
inoremap <Down> <Nop> " Disable arrow keys
inoremap <Left> <Nop>
inoremap <Right> <Nop>
inoremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
noremap <Up> <Nop>
set backspace=indent,eol,start " Allow backspace in insert mode
set timeoutlen=800 " Timeout (milliseconds) for mapped key sequence

" Lines
set linebreak " Wrap long lines at a character in 'breakat' rather than last character that fits on the screen
set number " Show line numbers
set wrap " Wrap long lines

" Search
set hlsearch " When there is a previous search pattern, highlight all its matches
set ignorecase smartcase " Ignore case in search patterns, overrdien if contains uppercase characters
set incsearch " While typing a search command, show where the pattern so far matches

" Scrolling
set scrolloff=5 " Minimal number of screen lines to keep above and below the cursor
set sidescroll=1 " The minimal number of colums to scroll horizontally
set sidescrolloff=10 " The minimal number of screen columns to keep to the left and to the right of the cursor if 'nowrap' is set
set t_ti= t_te= " Keep last position in the scroll buffer when using view, man, etc. http://www.shallowsky.com/linux/noaltscreen.html

if has('gui_running')
    set guioptions-=rL
endif

" Widows
set winwidth=80 " Minimal number of columns for the current window

" Plugins (Vundle https://github.com/gmarik/vundle)
" Was at the top but moved to the bottom because some settings depend on
" general Vim settings.
" Loads settings from .vim/vundle directory.
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
runtime! vundle/*.vim
filetype plugin indent on
