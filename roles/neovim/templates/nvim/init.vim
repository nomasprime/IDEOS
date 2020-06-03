" Select option and press K to lookup option in NeoVim help

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Core
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Colours
set termguicolors " ✓

" Command and Status
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
set list
set listchars=tab:⭢\ , " U+2B62
set fillchars=fold:-
set shortmess=acFIT
set showmatch
set undodir=~/.nvim/undo
set undofile
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
set formatoptions=cqt
set nofixeol
set linebreak
set number
set numberwidth=3
let &showbreak='⮑ ' " U+2B91
set nostartofline
set wrapmargin=0

" Providers
let g:node_host_prog=expand("~/.asdf/installs/nodejs/14.2.0/.npm/bin/neovim-node-host")
let g:python3_host_prog=expand("~/.asdf/installs/python/3.8.3/bin/python")
let g:ruby_host_prog=expand("~/.asdf/installs/ruby/2.7.0/bin/neovim-ruby-host")

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
set signcolumn=auto

" Terminal
tnoremap <Esc> <C-\><C-n>

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

Plug 'chaoren/vim-wordmotion'
" More useful word motions
" https://github.com/chaoren/vim-wordmotion

Plug 'chrisbra/Colorizer'
" Colour hex codes and colour names
" https://github.com/chrisbra/Colorizer

Plug 'chriskempson/base16-vim'
" Base16 themes
" https://github.com/chriskempson/base16-vim

Plug 'honza/vim-snippets'
" Default snippets
" https://github.com/honza/vim-snippets

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

Plug 'mattn/gist-vim'
" Create Gists
" https://github.com/mattn/gist-vim

Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }
" History visualizer
" https://github.com/mbbill/undotree

Plug 'mhinz/vim-signify'
" Show a diff in sign column
" https://github.com/mhinz/vim-signify

Plug 'michaeljsmith/vim-indent-object'
" Defines new text object based on indentation levels
" https://github.com/michaeljsmith/vim-indent-object

Plug 'milkypostman/vim-togglelist'
" Bind a key to toggle the Location List and the Quickfix List
" https://github.com/milkypostman/vim-togglelist

Plug 'neomake/neomake'
" Asynchronous linting and make framework
" https://github.com/neomake/neomake

Plug 'blueyed/vim-qf_resize'
" Resize location/quickfix windows
" https://github.com/blueyed/vim-qf_resize

Plug 'neovim/nvim-lsp'
" Collection of common configurations for the Nvim LSP client
" https://github.com/neovim/nvim-lsp

Plug 'ntpeters/vim-better-whitespace'
" Better whitespace highlighting
" https://github.com/michaeljsmith/vim-indent-object

Plug 'sheerun/vim-polyglot'
" https://github.com/sheerun/vim-polyglot
" A solid language pack

Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
" Like a fuzzy finder but more generic
" https://github.com/Shougo/denite.nvim

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/deoplete-lsp'
" Like a fuzzy finder but more generic
" https://github.com/Shougo/deoplete.nvim

Plug 'SirVer/ultisnips'
" The ultimate snippet solution
" https://github.com/sirver/UltiSnips

Plug 'tpope/vim-abolish'
" Working with word variants
" https://github.com/tomtom/tlib_vim

Plug 'tpope/vim-commentary'
" Commenting
" https://github.com/tpope/vim-commentary

Plug 'tpope/vim-dispatch'
" Commenting
" https://github.com/tpope/vim-commentary

Plug 'tpope/vim-eunuch'
" Shell wrapper
" https://github.com/tpope/vim-eunuch

Plug 'tpope/vim-fugitive'
" Shell wrapper
" https://github.com/tpope/vim-fugitive

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

" Plug 'ryanoasis/vim-devicons'
" https://github.com/ryanoasis/vim-devicons
call plug#end()

" chriskempson/base16-vim
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

hi Comment cterm=italic gui=italic
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

let test#strategy = 'neomake'

" justinmk/vim-dirvish
augroup dirvish_config
  autocmd!
  autocmd FileType dirvish silent! unmap <buffer> o
  autocmd FileType dirvish nnoremap <silent><buffer> <C-s> :call dirvish#open('split', 1)<CR>
  autocmd FileType dirvish silent! unmap <buffer> O
  autocmd FileType dirvish xnoremap <silent><buffer> <C-s> :call dirvish#open('split', 1)<CR>
  autocmd FileType dirvish silent! unmap <buffer> a
  autocmd FileType dirvish nnoremap <silent><buffer> <C-v> :call dirvish#open('vsplit', 1)<CR>
  autocmd FileType dirvish silent! unmap <buffer> A
  autocmd FileType dirvish xnoremap <silent><buffer> <C-v> :call dirvish#open('vsplit', 1)<CR>
augroup END

let g:dirvish_mode = ':sort | sort ,^.*/,'

hi Directory cterm=bold gui=bold

" justinmk/vim-gtfo
let g:gtfo#terminals = { 'mac': 'iterm' }

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

" ludovicchabant/vim-gutentags
let g:gutentags_ctags_tagfile = '.tags'

" mbbill/undotree
nnoremap <Leader>u :UndotreeToggle<CR>

" neomake/neomake
let g:neomake_echo_current_error = 0
let g:neomake_postprocess = 'neomake#postprocess#compress_whitespace'

function! s:on_battery()
  if has('macunix')
    return match(system('pmset -g batt'), "Now drawing from 'Battery Power'") != -1
  elseif has('unix')
    return readfile('/sys/class/power_supply/AC/online') == ['0']
  endif

  return 0
endfunction

function! s:energy_saver(timer)
  if s:on_battery()
    call neomake#configure#automake('rw')
  else
    call neomake#configure#automake('nrw', 80)
  endif
endfunction

call s:energy_saver(0)
call timer_start(15000, function('s:energy_saver'), {'repeat': -1})

" sheerun/vim-polyglot
let g:polyglot_disabled = ['latex']

" Shougo/denite.nvim
call denite#custom#option('default', {
  \ 'auto_resize': 1,
  \ 'highlight_matched_char': 'gitcommitBranch',
  \ 'highlight_matched_range': 'SpellLocal',
  \ 'match_highlight': 1,
  \ 'reversed': 1,
  \ 'source_names': 'short',
  \ 'start_filter': 1,
  \ 'statusline': 0,
  \ })

call denite#custom#kind('directory', 'default_action', 'open')
call denite#custom#source('command_history', 'sorters', [])
call denite#custom#var('file/rec', 'command', ['rg', '--files', '--glob', '!.git', '--hidden'])

call denite#custom#var('grep', {
  \ 'command': ['rg'],
  \ 'default_opts': ['-i', '--vimgrep', '--no-heading', '--hidden'],
  \ 'recursive_opts': [],
  \ 'pattern_opt': ['--regexp'],
  \ 'separator': ['--'],
  \ 'final_opts': [],
  \ })

nnoremap <silent> <Leader>: :Denite command<CR>
nnoremap <silent> <Leader>` :Denite mark<CR>
nnoremap <silent> <Leader>" :Denite register<CR>
nnoremap <silent> <Leader>- :DeniteProjectDir directory_rec<CR>
nnoremap <silent> <Leader>* :<C-u>DeniteCursorWord grep:.<CR>
nnoremap <silent> <Leader>/ :<C-u>Denite grep:. -no-empty<CR>
nnoremap <silent> <Leader>b :Denite buffer<CR>
nnoremap <silent> <Leader>e :DeniteProjectDir file/rec<CR>
nnoremap <silent> <Leader>g :Denite line<CR>
nnoremap <silent> <Leader>r :Denite command_history<CR>

" Denite buffer maps
autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <C-s>
  \ denite#do_map('do_action', 'split')
  nnoremap <silent><buffer><expr> <C-t>
  \ denite#do_map('do_action', 'tabopen')
  nnoremap <silent><buffer><expr> <C-v>
  \ denite#do_map('do_action', 'vsplit')
  nnoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> d
  \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p
  \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> i
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> m
  \ denite#do_map('toggle_select').'k'
  nnoremap <silent><buffer><expr> q
  \ denite#do_map('quit')
endfunction

" Denite filter buffer maps
autocmd FileType denite-filter call s:denite_filter_my_settings()
function! s:denite_filter_my_settings() abort
  call deoplete#custom#buffer_option('auto_complete', v:false)
  imap <silent><buffer> <Esc> <Plug>(denite_filter_quit)
  inoremap <silent><buffer><expr> <C-s>
        \ denite#do_map('do_action', 'split')
  inoremap <silent><buffer><expr> <C-t>
        \ denite#do_map('do_action', 'tabopen')
  inoremap <silent><buffer><expr> <C-v>
        \ denite#do_map('do_action', 'vsplit')
  inoremap <silent><buffer><expr> <CR>
        \ denite#do_map('do_action')
endfunction

" Shougo/deoplete.nvim
let g:deoplete#enable_at_startup = 1

" SirVer/ultisnips
let g:UltiSnipsEditSplit='vertical'

" vim-airline/vim-airline
let g:airline_left_alt_sep=''
let g:airline_left_sep=''
let g:airline_powerline_fonts=1
let g:airline_right_alt_sep=''
let g:airline_right_sep=''
let g:airline_theme='base16'
let g:airline#extensions#branch#displayed_head_limit=20
let g:airline#extensions#branch#format=2

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Lib
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Buffers
nnoremap <silent> ]b :bnext<cr>
nnoremap <silent> [b :bprev<cr>

" Delete hidden buffers
function! DeleteHiddenBuffers()
  let tpbl=[]
  call map(range(1, tabpagenr('$')), 'extend(tpbl, tabpagebuflist(v:val))')

  for buf in filter(range(1, bufnr('$')), 'bufexists(v:val) && index(tpbl, v:val)==-1')
    silent execute 'bwipeout' buf
  endfor
endfunction

command Bdh call DeleteHiddenBuffers()

" Lists
command! Cnext try | silent! cnext | catch | silent! cfirst | catch | endtry
command! Cprev try | silent! cprev | catch | silent! clast | catch | endtry
command! Lnext try | silent! lnext | catch | silent! lfirst | catch | endtry
command! Lprev try | silent! lprev | catch | silent! llast | catch | endtry
nnoremap <silent> ]q :Cnext<cr>
nnoremap <silent> [q :Cprev<cr>
nnoremap <silent> ]l :Lnext<cr>
nnoremap <silent> [l :Lprev<cr>

" Tabs
nnoremap <silent> ]t :tabn<cr>
nnoremap <silent> [t :tabp<cr>

luafile ~/.config/nvim/init.lua
