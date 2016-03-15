""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Core
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Command and Status
set history=9999 " Command line history
set laststatus=2 " When the last window will have a status line (0 - never; 1 - at least two windows; 2 - always)
set showcmd " Show incomplete commands
set visualbell " Prefer visual to audial feedback

" Cursor
set cursorline " Highlight current line
set selection=exclusive

" Files and Syntax
set autoread " When a file has been detected to have been changed outside of Vim and it has not been changed inside of Vim, automatically read it again
set backup " Create backup files
set backupdir=~/.nvim/backup " Backup files dir
set directory=~/.nvim/temp " Swap files dir
set hidden " Allow hidden buffers
set list listchars=tab:▸\ ,trail:· " Show tabs and trailing spaces
set showmatch " When a bracket is inserted, briefly jump to the matching one
set undodir=~/.nvim/undo " Undo files dir
set undofile " Create undo files
silent !mkdir ~/.nvim/backup > /dev/null 2>&1
silent !mkdir ~/.nvim/temp > /dev/null 2>&1
silent !mkdir ~/.nvim/undo > /dev/null 2>&1
syntax on

" Folding
set foldignore= " Stops folds breaking on empty lines
set foldlevelstart=20 " Hopefully open file with all folds open
set foldmethod=indent " The kind of folding used for the current window
set foldnestmax=20 " Sets the maximum nesting of folds for the indent and syntax methods

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
inoremap <Down> <Nop>
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
set nolist " List disables linebreak
set number " Show line numbers
set textwidth=0
set wrap " Wrap long lines
set wrapmargin=0

" Registers
set clipboard=unnamed

" Search
set ignorecase smartcase " Ignore case in search patterns, overrdien if contains uppercase characters

" Scrolling
set scrolloff=3 " Minimal number of screen lines to keep above and below the cursor
set sidescroll=1 " The minimal number of colums to scroll horizontally
set sidescrolloff=10 " The minimal number of screen columns to keep to the left and to the right of the cursor if 'nowrap' is set
set t_ti= t_te= " Keep last position in the scroll buffer when using view, man, etc. http://www.shallowsky.com/linux/noaltscreen.html

" Tags
set tags+=.tags

" Widows
set winwidth=80 " Minimal number of columns for the current window

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins (Vundle https://github.com/gmarik/vundle)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Was at the top but moved to the bottom because some settings depend on
" general Vim settings.
set nocompatible
filetype off
set rtp+=~/.config/nvim/bundle/Vundle.vim

call vundle#begin('~/.config/nvim/bundle')
Plugin 'VundleVim/Vundle.vim'
Plugin 'aaronjensen/vim-sass-status'
Plugin 'briandoll/change-inside-surroundings.vim'
Plugin 'chrisbra/color_highlight'
Plugin 'chriskempson/base16-vim'
Plugin 'ck3g/vim-change-hash-syntax'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'digitaltoad/vim-jade'
Plugin 'ecomba/vim-ruby-refactoring'
Plugin 'evidens/vim-twig'
Plugin 'garbas/vim-snipmate'
Plugin 'godlygeek/tabular'
Plugin 'haya14busa/incsearch.vim'
Plugin 'haya14busa/incsearch-easymotion.vim'
Plugin 'haya14busa/incsearch-fuzzy.vim'
Plugin 'honza/vim-snippets'
Plugin 'itspriddle/vim-jquery'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'jtratner/vim-flavored-markdown'
Plugin 'junegunn/goyo.vim'
Plugin 'juvenn/mustache.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'kshenoy/vim-signature'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'majutsushi/tagbar'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'mattn/webapi-vim'
Plugin 'moll/vim-node'
Plugin 'nelstrom/vim-visual-star-search'
Plugin 'nrocco/vim-phplint'
Plugin 'peterhost/YankRing.vim'
Plugin 'puppetlabs/puppet-syntax-vim'
Plugin 'Raimondi/delimitMate'
Plugin 'rking/ag.vim'
Plugin 'scrooloose/syntastic'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'sjl/gundo.vim'
Plugin 'tfnico/vim-gradle'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tomtom/tcomment_vim'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/gem-browse'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-projectionist'
Plugin 'tpope/vim-ragtag'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-vinegar'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-ruby/vim-ruby'
Plugin 'vim-scripts/camelcasemotion'
Plugin 'vim-scripts/ExplainPattern'
Plugin 'vim-scripts/greplace.vim'
Plugin 'vim-scripts/groovy.vim'
Plugin 'vim-scripts/matchit.zip'
Plugin 'vim-scripts/Specky'
Plugin 'vim-scripts/sudo.vim'
Plugin 'vim-scripts/TagHighlight'
Plugin 'walm/jshint.vim'
Plugin 'wavded/vim-stylus'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'
call vundle#end()

filetype plugin indent on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" chriskempson/base16-vim
set background=dark
colorscheme base16-twilight

" ervandew/eclim
let g:EclimCompletionMethod = 'omnifunc'

" haya14busa/incsearch.vim
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

" haya14busa/inchsearch-easymotion.vim
function! s:incsearch_config(...) abort
  return incsearch#util#deepextend(deepcopy({
  \   'modules': [incsearch#config#easymotion#module({'overwin': 1})],
  \   'keymap': {
  \     "\<CR>": '<Over>(easymotion)'
  \   },
  \   'is_expr': 0
  \ }), get(a:, 1, {}))
endfunction

noremap <silent><expr> /  incsearch#go(<SID>incsearch_config())
noremap <silent><expr> ?  incsearch#go(<SID>incsearch_config({'command': '?'}))
noremap <silent><expr> g/ incsearch#go(<SID>incsearch_config({'is_stay': 1}))

" haya14busa/inchsearch-fuzzy.vim
function! s:config_easyfuzzymotion(...) abort
  return extend(copy({
  \   'converters': [incsearch#config#fuzzy#converter()],
  \   'modules': [incsearch#config#easymotion#module()],
  \   'keymap': {"\<CR>": '<Over>(easymotion)'},
  \   'is_expr': 0,
  \   'is_stay': 1
  \ }), get(a:, 1, {}))
endfunction

noremap <silent><expr> <Space>/ incsearch#go(<SID>config_easyfuzzymotion())

" junegunn/goyo.vim
let g:goyo_width = 100

" kien/ctrlp.vim
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_map = '<Leader>g'
let g:ctrlp_show_hidden = 1

" majutsushi/tagbar
let g:tagbar_ctags_bin='/opt/boxen/homebrew/bin/ctags'
nnoremap <Leader>t :TagbarToggle<CR>

" peterhost/YankRing.vim
let g:yankring_history_file = '.nvim/yankring_history'
nnoremap <Leader>y :YRShow<CR>

" Raimondi/delimitMate
let g:delimitMate_expand_cr = 1

" rking/ag.vim
set grepprg=ag

" sjl/gundo.vim
let g:gundo_right = 1
nnoremap <Leader>u :GundoToggle<CR>

" Valloric/YouCompleteMe
let g:ycm_register_as_syntastic_checker = 0

" vim-airline/vim-airline
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_powerline_fonts=1
let g:airline_theme='base16_twilight'

" xolox/vim-session
let g:session_autosave = 'no'
