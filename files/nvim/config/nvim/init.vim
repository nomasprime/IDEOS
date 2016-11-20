""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Core
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Command and Status
set history=9999 " Command line history
set laststatus=2 " When the last window will have a status line (0 - never; 1 - at least two windows; 2 - always)
set showcmd " Show incomplete commands
set visualbell " Prefer visual to audial feedback
set wildmenu " command-line completion in enhanced mode
set wildmode=full " complete the next full match

" Cursor
set cursorline " Highlight current line
set selection=inclusive
set virtualedit=block " cursor can be position where there is no actual character

" Diffs
set diffopt=filler,vertical

" Editing
set nojoinspaces

" Files and Syntax
set autoread " When a file has been detected to have been changed outside of Vim and it has not been changed inside of Vim, automatically read it again
set backup " Create backup files
set backupdir=~/.nvim/backup " Backup files dir
set directory=~/.nvim/temp " Swap files dir
set encoding=utf-8
set hidden " Allow hidden buffers
set list listchars=tab:\|\ ,
set shortmess=aIT " avoid hit-enter prompts
set showmatch " When a bracket is inserted, briefly jump to the matching one
set undodir=~/.nvim/undo " Undo files dir
set undofile " Create undo files
silent !mkdir ~/.nvim/backup > /dev/null 2>&1
silent !mkdir ~/.nvim/temp > /dev/null 2>&1
silent !mkdir ~/.nvim/undo > /dev/null 2>&1
syntax on

" Folding
set foldignore= " Stops folds breaking on empty lines
set foldlevelstart=99 " Hopefully open file with all folds open
set foldmethod=indent " The kind of folding used for the current window
set foldnestmax=20 " Sets the maximum nesting of folds for the indent and syntax methods

" Identation
set autoindent " Copy indent from current line when starting new line
set expandtab " Use the appropriate number of spaces to insert a <Tab>
set shiftwidth=2 " Number of spaces to use for each step (auto)indent
set smartindent " Do smart autoindenting when starting a new line
set smarttab " When on a <Tab> in front of a line inserts blanks according to 'shiftwidth'
set softtabstop=2 " Number of spaces that a <Tab> counts for while performing editing operations, like inserting a <Tab> or using <BS>
set tabstop=2 " Number of spaces that a <Tab> in the file counts for

" Keys
let mapleader="\<Space>"
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
set breakindent
set breakindentopt=sbr
set colorcolumn=120
set formatoptions=cqt
set nofixeol
set linebreak " Wrap long lines at a character in 'breakat' rather than last character that fits on the screen
set number " Show line numbers
set numberwidth=4
let &showbreak='↳ '
set nostartofline " Cursor position after certain commands
set textwidth=120
set wrapmargin=0

" Registers
set clipboard=unnamed

" Search
nmap <silent> // :nohlsearch<CR>
set hlsearch
set ignorecase smartcase " Ignore case in search patterns, overrdien if contains uppercase characters
set incsearch

" Scrolling
set scrolloff=3 " Minimal number of screen lines to keep above and below the cursor
set sidescroll=1 " The minimal number of colums to scroll horizontally
set sidescrolloff=10 " The minimal number of screen columns to keep to the left and to the right of the cursor if 'nowrap' is set
set t_ti= t_te= " Keep last position in the scroll buffer when using view, man, etc. http://www.shallowsky.com/linux/noaltscreen.html

" Tags
set tags+=.tags

" Widows
set winwidth=120 " Minimal number of columns for the current window

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Was at the top but moved to the bottom because some settings depend on
" general Vim settings.
call plug#begin('~/.config/nvim/plugged')
Plug 'aaronjensen/vim-sass-status'
Plug 'airblade/vim-gitgutter'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'chrisbra/Colorizer'
Plug 'chriskempson/base16-vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'docker/docker'
Plug 'elzr/vim-json'
Plug 'elixir-lang/vim-elixir'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'Glench/Vim-Jinja2-Syntax'
Plug 'hashivim/vim-consul'
Plug 'hashivim/vim-terraform'
Plug 'hashivim/vim-vagrant'
Plug 'honza/vim-snippets'
Plug 'itspriddle/vim-jquery'
Plug 'janko-m/vim-test'
Plug 'jiangmiao/auto-pairs'
Plug 'jtratner/vim-flavored-markdown'
Plug 'junegunn/gv.vim'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'junegunn/vim-after-object'
Plug 'justinmk/vim-dirvish'
Plug 'junegunn/vim-easy-align', { 'on': ['<Plug>(EasyAlign)', 'EasyAlign'] }
Plug 'junegunn/vim-xmark', { 'do': 'make' }
Plug 'justinmk/vim-gtfo'
Plug 'justinmk/vim-sneak'
Plug 'kchmck/vim-coffee-script'
Plug 'kshenoy/vim-signature'
Plug 'ludovicchabant/vim-gutentags'
Plug 'majutsushi/tagbar'
Plug 'mattn/gist-vim'
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }
Plug 'mhinz/vim-grepper'
Plug 'michaeljsmith/vim-indent-object'
Plug 'ntpeters/vim-better-whitespace'
Plug 'pangloss/vim-javascript'
Plug 'pearofducks/ansible-vim'
Plug 'peterhost/YankRing.vim'
Plug 'rodjek/vim-puppet'
Plug 'SirVer/ultisnips'
Plug 'tomtom/tlib_vim'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary', { 'on': '<Plug>Commentary' }
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'Valloric/ListToggle'
Plug 'Valloric/YouCompleteMe'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-ruby/vim-ruby'
Plug 'vim-scripts/camelcasemotion'
Plug 'vim-scripts/ExplainPattern'
Plug 'vim-syntastic/syntastic'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
call plug#end()

" chriskempson/base16-vim
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

" elzr/vim-json
let g:vim_json_warnings=0

" janko-m/vim-test
nmap <silent> <Leader>tn :TestNearest<CR>
nmap <silent> <Leader>tf :TestFile<CR>
nmap <silent> <Leader>ts :TestSuite<CR>
nmap <silent> <Leader>tl :TestLast<CR>
nmap <silent> <Leader>tv :TestVisit<CR>

" junegunn/vim-after-object
silent! if has_key(g:plugs, 'vim-after-object')
  autocmd VimEnter * silent! call after_object#enable('=', ':', '#', ' ', '|')
endif

" junegunn/vim-easy-align
let g:easy_align_delimiters = {
\ '>': { 'pattern': '>>\|=>\|>' },
\ '\': { 'pattern': '\\' },
\ '/': { 'pattern': '//\+\|/\*\|\*/', 'delimiter_align': 'l', 'ignore_groups': ['!Comment'] },
\ ']': {
\     'pattern':       '\]\zs',
\     'left_margin':   0,
\     'right_margin':  1,
\     'stick_to_left': 0
\   },
\ ')': {
\     'pattern':       ')\zs',
\     'left_margin':   0,
\     'right_margin':  1,
\     'stick_to_left': 0
\   },
\ 'f': {
\     'pattern': ' \(\S\+(\)\@=',
\     'left_margin': 0,
\     'right_margin': 0
\   },
\ 'd': {
\     'pattern': ' \ze\S\+\s*[;=]',
\     'left_margin': 0,
\     'right_margin': 0
\   }
\ }

nmap ga <Plug>(EasyAlign)
nmap gaa ga_
xmap ga <Plug>(EasyAlign)

" justinmk/vim-sneak

let g:sneak#streak = 1
let g:sneak#use_ic_scs = 1
nmap f <Plug>Sneak_f
nmap F <Plug>Sneak_F
xmap f <Plug>Sneak_f
xmap F <Plug>Sneak_F
omap f <Plug>Sneak_f
omap F <Plug>Sneak_F
nmap t <Plug>Sneak_t
nmap T <Plug>Sneak_T
xmap t <Plug>Sneak_t
xmap T <Plug>Sneak_T
omap t <Plug>Sneak_t
omap T <Plug>Sneak_T

" kien/ctrlp.vim
let g:ctrlp_clear_cache_on_exit=0
let g:ctrlp_map='<Leader>f'
let g:ctrlp_show_hidden=1

" majutsushi/tagbar
let g:tagbar_ctags_bin='/opt/boxen/homebrew/bin/ctags'
nnoremap <Leader>t :TagbarToggle<CR>

" mbbill/undotree
nnoremap <Leader>u :UndotreeToggle<CR>

" mhinz/vim-grepper
nnoremap <Leader>g :Grepper<CR>

" peterhost/YankRing.vim
let g:yankring_history_file='.nvim/yankring_history'
nnoremap <Leader>y :YRShow<CR>

" rodjek/vim-puppet
let g:puppet_align_hashes=0

" SilVer/ultisnips
let g:UltiSnipsExpandTrigger='<C-K>'
let g:UltiSnipsJumpForwardTrigger='<C-K>'
let g:UltiSnipsJumpBackwardTrigger='<S-C-J>'

" tpope/vim-commentary
map  gc <Plug>Commentary
nmap gcc <Plug>CommentaryLine

" Valloric/ListToggle
let g:lt_location_list_toggle_map = '<Leader>l'
let g:lt_quickfix_list_toggle_map = '<Leader>q'

" Valloric/YouCompleteMe
let g:ycm_auto_trigger=0
let g:ycm_register_as_syntastic_checker=0

" vim-airline/vim-airline
let g:airline_left_alt_sep='|'
let g:airline_left_sep=''
let g:airline_right_alt_sep='|'
let g:airline_right_sep=''
let g:airline_powerline_fonts=1
let g:airline_theme='base16'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#enabled = 1

" vim-syntastic/syntastic
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
let g:syntastic_ruby_checkers=['rubocop']

" xolox/vim-session
let g:session_autoload='no'
let g:session_autosave='no'
