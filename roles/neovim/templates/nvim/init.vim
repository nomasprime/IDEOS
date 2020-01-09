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
set guicursor=
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
set shortmess=aFIT " avoid hit-enter prompts
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
nnoremap Y y$
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
noremap <Up> <Nop>
set backspace=indent,eol,start " Allow backspace in insert mode
set timeoutlen=500 " Timeout (milliseconds) for mapped key sequence

" Lines
set breakindent
set breakindentopt=sbr
set formatoptions=cqt
set nofixeol
set linebreak " Wrap long lines at a character in 'breakat' rather than last character that fits on the screen
set number " Show line numbers
set numberwidth=4
let &showbreak='↳'
set nostartofline " Cursor position after certain commands
set wrapmargin=0

" Misc
set cpoptions=aABceFns

" Registers
set clipboard=unnamed

" Search
nmap <silent> // :nohlsearch<CR>
set hlsearch
set ignorecase smartcase " Ignore case in search patterns, overrdien if contains uppercase characters
set incsearch

" Scrolling
set scrolloff=2 " Minimal number of screen lines to keep above and below the cursor
set sidescroll=1 " The minimal number of colums to scroll horizontally
set sidescrolloff=10 " The minimal number of screen columns to keep to the left and to the right of the cursor if 'nowrap' is set
set t_ti= t_te= " Keep last position in the scroll buffer when using view, man, etc. http://www.shallowsky.com/linux/noaltscreen.html

" Tags
set tags+=.tags

" Widows
set winwidth=80 " Minimal number of columns for the current window

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

set rtp+={{ brew['prefix'] }}/opt/fzf
Plug 'junegunn/fzf.vim'
" Default FZF commands and mappings
" https://github.com/junegunn/fzf.vim

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

Plug 'ntpeters/vim-better-whitespace'
" Better whitespace highlighting
" https://github.com/michaeljsmith/vim-indent-object

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

" junegunn/fzf
let g:fzf_layout = { 'down': '~33%' }

nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <Leader>f :Files<CR>
nnoremap <silent> <Leader>` :Marks<CR>

imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

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
