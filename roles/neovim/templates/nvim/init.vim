" Select option and press K to lookup option in NeoVim help

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Core
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Command and Status
set cmdheight=2 " (see coc.nvim)
set history=9999
set laststatus=2
set showcmd
set visualbell
set wildmenu
set wildmode=full

" Cursor
set cursorline
set guicursor=
set selection=inclusive
set virtualedit=block

" Diffs
set diffopt=filler,vertical

" Editing
set nojoinspaces

" Files and Syntax
set autoread
set backup
set backupdir=~/.nvim/backup
set directory=~/.nvim/temp
set encoding=utf-8
set hidden
set list listchars=tab:\|\ ,
set shortmess=acFIT
set showmatch
set undodir=~/.nvim/undo
set undofile
set updatetime=300 " (see coc.nvim)
silent !mkdir ~/.nvim/backup > /dev/null 2>&1
silent !mkdir ~/.nvim/temp > /dev/null 2>&1
silent !mkdir ~/.nvim/undo > /dev/null 2>&1
syntax on

" Folding
set foldignore=
set foldlevelstart=99
set foldmethod=indent
set foldnestmax=20

" Identation
set autoindent
set expandtab
set shiftwidth=2
set smartindent
set smarttab
set softtabstop=2
set tabstop=2

" Keys
let mapleader="\<Space>"
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
inoremap <Up> <Nop>
nnoremap Y y$
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
noremap <Up> <Nop>
set backspace=indent,eol,start
set timeoutlen=500

" Lines
set breakindent
set breakindentopt=sbr
set formatoptions=cqt
set nofixeol
set linebreak
set number
set numberwidth=4
let &showbreak='↳'
set nostartofline
set wrapmargin=0

" Misc
set cpoptions=aABceFns

" Registers
set clipboard=unnamed

" Search
nmap <silent> // :nohlsearch<CR>
set hlsearch
set ignorecase smartcase
set incsearch

" Scrolling
set scrolloff=2
set sidescroll=1
set sidescrolloff=10
set t_ti= t_te=

" Sign Column
set signcolumn=yes

" Tags
set tags+=.tags

" Widows
set winwidth=80

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Was at the top but moved to the bottom because some settings depend on
" general Vim settings.
call plug#begin('~/.config/nvim/plugged')

Plug 'AndrewRadev/splitjoin.vim'
" Single/multi-line switching
" https://github.com/AndrewRadev/splitjoin.vim

Plug 'chrisbra/Colorizer'
" Colour hex codes and colour names
" https://github.com/chrisbra/Colorizer

Plug 'chriskempson/base16-vim'
" Base16 themes
" https://github.com/chriskempson/base16-vim

Plug 'janko-m/vim-test'
" Test runner
" https://github.com/janko/vim-test

Plug 'junegunn/vim-xmark', { 'do': 'make' }
" Markdown preview in Chrome
" https://github.com/junegunn/vim-xmark

Plug 'justinmk/vim-dirvish'
" Directory viewer (netrw alternative)
" https://github.com/justinmk/vim-dirvish

Plug 'justinmk/vim-gtfo'
" Opens file manage (e.g. Finder) or terminal at the directory of the current
" file
" https://github.com/justinmk/vim-gtfo

Plug 'justinmk/vim-sneak'
" Jump to any location specified by tow characters
" https://github.com/justinmk/vim-sneak

Plug 'kshenoy/vim-signature'
" Toggle, display, and navigate marks
" https://github.com/kshenoy/vim-signature

Plug 'ludovicchabant/vim-gutentags'
" Generates tag files
" https://github.com/ludovicchabant/vim-gutentags

Plug 'luochen1990/rainbow'
" Rainbow brackets
" https://github.com/frazrepo/vim-rainbow

Plug 'mattn/gist-vim'
" Create Gists
" https://github.com/mattn/gist-vim

Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }
" History visualizer
" https://github.com/mbbill/undotree

Plug 'michaeljsmith/vim-indent-object'
" Defines new text object based on indentation levels
" https://github.com/michaeljsmith/vim-indent-object

Plug 'neoclide/coc.nvim', { 'branch': 'release' }
" Intellisense engine
" https://github.com/neoclide/coc.nvim
Plug 'neoclide/coc-denite'

Plug 'ntpeters/vim-better-whitespace'
" Better whitespace highlighting
" https://github.com/michaeljsmith/vim-indent-object

Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
" Like a fuzzy finder but more generic
" https://github.com/Shougo/denite.nvim

Plug 'tpope/vim-abolish'
" Working with word variants
" https://github.com/tomtom/tlib_vim

Plug 'tpope/vim-commentary', { 'on': '<Plug>Commentary' }
" Commenting
" https://github.com/tpope/vim-commentary

Plug 'tpope/vim-eunuch'
" Shell wrapper
" https://github.com/tpope/vim-eunuch

Plug 'tpope/vim-projectionist'
" Granular project configuration using projections
" https://github.com/tpope/vim-projectionist

Plug 'tpope/vim-repeat'
" Remaps . to repeat entire map rather than the last native command inside the
" map
" https://github.com/tpope/vim-repeat

Plug 'tpope/vim-surround'
" Delete, change, and add surroundings in pairs
" (N.B. Insert mode for brackets, quotes, etc.)
" https://github.com/tpope/vim-surround

Plug 'vim-airline/vim-airline'
" Status/tab line
" https://github.com/vim-airline/vim-airline

Plug 'vim-airline/vim-airline-themes'
" Themes for airline
" https://github.com/vim-airline/vim-airline-themes

Plug 'vim-scripts/ExplainPattern'
" Explains regex pattern
" https://github.com/vim-scripts/ExplainPattern
call plug#end()

" chriskempson/base16-vim
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

hi Comment cterm=italic
hi CursorLine cterm=none ctermbg=none
hi CursorLineNr ctermfg=16
hi Visual cterm=underline ctermbg=none
hi! link Search IncSearch
hi! link WildMenu IncSearch
hi! link Sneak IncSearch
hi! link SneakLabel IncSearch
hi! link SneakScope Visual

" janko-m/vim-test
nmap <silent> <Leader>tn :TestNearest<CR>
nmap <silent> <Leader>tf :TestFile<CR>
nmap <silent> <Leader>ts :TestSuite<CR>
nmap <silent> <Leader>tl :TestLast<CR>
nmap <silent> <Leader>tv :TestVisit<CR>

let test#strategy = "neovim"

function! DockerTransform(cmd) abort
  return 'cd inf/development && docker-compose run -e "RAILS_ENV=test" web '.a:cmd.''
endfunction

let g:test#custom_transformations = {'docker': function('DockerTransform')}
let g:test#transformation = 'docker'

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

" luochen1990/rainbow
let g:rainbow_active = 1
let g:rainbow_conf = {
\   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
\   'ctermfgs': ['blue', 'yellow', 'cyan', 'magenta'],
\   'operators': '_,_',
\   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\   'separately': {
\       '*': {},
\       'tex': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\       },
\       'lisp': {
\           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
\       },
\       'vim': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
\       },
\       'html': {
\           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\       },
\       'css': 0,
\   }
\}

" mbbill/undotree
nnoremap <Leader>u :UndotreeToggle<CR>

" Shougo/denite.nvim
autocmd FileType denite call s:denite_my_settings()

function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> d
  \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p
  \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> q
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> i
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <Space>
  \ denite#do_map('toggle_select').'j'
endfunction

" tpope/vim-commentary
map  gc <Plug>Commentary
nmap gcc <Plug>CommentaryLine

" vim-airline/vim-airline
let g:airline_left_alt_sep=''
let g:airline_left_sep=''
let g:airline_powerline_fonts=1
let g:airline_right_alt_sep=''
let g:airline_right_sep=''
let g:airline_theme='base16'
let g:airline#extensions#branch#displayed_head_limit=20
let g:airline#extensions#branch#format=2
let g:airline#extensions#tagbar#enabled=0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Lib
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Buffers
nnoremap ]b :bnext<cr>
nnoremap [b :bprev<cr>

" Delete hidden buffers
function! DeleteHiddenBuffers()
  let tpbl=[]
  call map(range(1, tabpagenr('$')), 'extend(tpbl, tabpagebuflist(v:val))')

  for buf in filter(range(1, bufnr('$')), 'bufexists(v:val) && index(tpbl, v:val)==-1')
    silent execute 'bwipeout' buf
  endfor
endfunction

command Bdh call DeleteHiddenBuffers()

" Moving lines
nnoremap <silent> <C-k> :move-2<cr>
nnoremap <silent> <C-j> :move+<cr>
nnoremap <silent> <C-h> <<
nnoremap <silent> <C-l> >>
xnoremap <silent> <C-k> :move-2<cr>gv
xnoremap <silent> <C-j> :move'>+<cr>gv
xnoremap <silent> <C-h> <gv
xnoremap <silent> <C-l> >gv
xnoremap < <gv
xnoremap > >gv

" Quickfix
nnoremap ]q :cnext<cr>zz
nnoremap [q :cprev<cr>zz
nnoremap ]l :lnext<cr>zz
nnoremap [l :lprev<cr>zz

" Tabs
nnoremap ]t :tabn<cr>
nnoremap [t :tabp<cr>
