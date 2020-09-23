" Select option and press K to lookup option in NeoVim help

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Core
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Colours
set termguicolors " ✓

" Command and Status
set cmdheight=2
set history=9999
set laststatus=2
set showcmd
set visualbell
set wildmenu
set wildmode=full

" Completion
set completeopt-=preview

" Cursor
set cursorcolumn
set cursorline

augroup nomasprime_cursor
  autocmd!

  autocmd VimEnter,VimResume * set guicursor=n-v:block,i-c-ci-ve:ver25,r-cr:hor20,o:hor50
    \,a:blinkwait500-blinkoff250-blinkon250-Cursor/lCursor
    \,sm:block-blinkwait175-blinkoff150-blinkon175

  autocmd VimLeave,VimSuspend * set guicursor=a:ver25
augroup END

set selection=inclusive
set virtualedit=block

" Diffs
set diffopt=filler,vertical

" Editing
set nojoinspaces

" Files and Syntax
set autoread
silent !mkdir ~/.nvim/swap > /dev/null 2>&1
set directory=~/.nvim/swap
set encoding=utf-8
set hidden
set list
set listchars=tab:┄\ , " U+2504
set nobackup
set nowritebackup
set fillchars=fold:-,vert:│
set shortmess=acFIT
set showmatch
silent !mkdir ~/.nvim/undo > /dev/null 2>&1
set undodir=~/.nvim/undo
set undofile
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
let maplocalleader="\\"
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
set numberwidth=4
let &showbreak='⤷ ' " U+2937
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
set signcolumn=auto:4

" Spelling
set dictionary=/usr/share/dict/words
set spelllang=en_gb
silent !mkdir ~/.nvim/spell > /dev/null 2>&1
set spellfile=~/.nvim/spell/en_gb.utf-8.add

" Splits
set splitbelow
set splitright

" Terminal
tnoremap <Esc> <C-\><C-n>

" Widows
set winwidth=80

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" sheerun/vim-polyglot
let g:polyglot_disabled = [
  \ 'latex',
  \]

" Was at the top but moved to the bottom because some settings depend on
" general Vim settings.
call plug#begin('~/.config/nvim/plugged')

Plug 'AndrewRadev/splitjoin.vim'
" Single/multi-line switching
" https://github.com/AndrewRadev/splitjoin.vim

Plug 'antonk52/coc-cssmodules', { 'do': 'yarn install --frozen-lockfile' }
" Autocompletion and go-to-definition functionality for css modules
" https://github.com/antonk52/coc-cssmodules

Plug 'blueyed/vim-qf_resize'
" Resize location/quickfix windows
" https://github.com/blueyed/vim-qf_resize

Plug 'chaoren/vim-wordmotion'
" More useful word motions
" https://github.com/chaoren/vim-wordmotion

Plug 'chriskempson/base16-vim'
" Base16 themes
" https://github.com/chriskempson/base16-vim

Plug 'fannheyward/coc-markdownlint', { 'do': 'yarn install --frozen-lockfile' }
" Markdown linter
" https://github.com/fannheyward/coc-markdownlint

Plug 'fannheyward/coc-react-refactor', { 'do': 'yarn install --frozen-lockfile' }
" React refactor extension for coc.nvim
" https://github.com/fannheyward/coc-react-refactor

Plug 'fannheyward/coc-sql', { 'do': 'yarn install --frozen-lockfile' }
" SQL extension for coc.nvim
" https://github.com/fannheyward/coc-sql

Plug 'fannheyward/coc-styled-components', { 'do': 'yarn install --frozen-lockfile' }
" Styled components for coc.nvim as a tsserver plugin
" https://github.com/fannheyward/coc-styled-components

Plug 'fannheyward/coc-xml', { 'do': 'yarn install --frozen-lockfile' }
" https://github.com/fannheyward/coc-xml

Plug 'felippepuhle/coc-graphql', { 'do': 'yarn install --frozen-lockfile' }
" GraphQL Language Service extension for coc.nvim
" https://github.com/felippepuhle/coc-graphql

Plug 'iamcco/coc-svg', { 'do': 'yarn install --frozen-lockfile' }
" A Powerful SVG Language Support Extension for coc.nvim. Almost all the features you need to handle SVG
" https://github.com/iamcco/coc-svg

Plug 'iamcco/coc-vimlsp', { 'do': 'yarn install --frozen-lockfile' }
" vim-language-server extension for coc.nvim
" https://github.com/iamcco/coc-vimlsp

Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
" Markdown
" https://github.com/iamcco/markdown-preview.nvim

Plug 'janko-m/vim-test'
" Test runner
" https://github.com/janko/vim-test

Plug 'josa42/coc-sh'
" SH language server extension using bash-language-server for coc.nvim
" https://github.com/josa42/coc-sh

Plug 'junkblocker/patchreview-vim'
" Easy single or multipatch code or diff reviews
" https://github.com/junkblocker/patchreview-vim

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

Plug 'mattn/webapi-vim'
" Web API interface
" https://github.com/mattn/webapi-vim

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

Plug 'neoclide/coc.nvim', { 'branch': 'release' }
" Make your Vim/Neovim as smart as VSCode
" https://github.com/neoclide/coc.nvim
Plug 'neoclide/coc-css', { 'do': 'yarn install --frozen-lockfile' }
Plug 'neoclide/coc-eslint', { 'do': 'yarn install --frozen-lockfile' }
Plug 'neoclide/coc-highlight', { 'do': 'yarn install --frozen-lockfile' }
Plug 'neoclide/coc-html', { 'do': 'yarn install --frozen-lockfile' }
Plug 'neoclide/coc-json', { 'do': 'yarn install --frozen-lockfile' }
Plug 'neoclide/coc-pairs', { 'do': 'yarn install --frozen-lockfile' }
Plug 'neoclide/coc-python', { 'do': 'yarn install --frozen-lockfile' }
Plug 'neoclide/coc-snippets', { 'do': 'yarn install --frozen-lockfile' }
Plug 'neoclide/coc-solargraph', { 'do': 'yarn install --frozen-lockfile' }
Plug 'neoclide/coc-tsserver', { 'do': 'yarn install --frozen-lockfile' }
Plug 'neoclide/coc-yaml', { 'do': 'yarn install --frozen-lockfile' }

Plug 'nomasprime/coc-denite'
" https://github.com/nomasprime/coc-denite

Plug 'nomasprime/neocursorline.nvim', { 'do': { -> neocursorline#install() } }
" https://github.com/nomasprime/neocursorline.nvim

Plug 'nomasprime/vim-snippets'
" Default snippets
" https://github.com/nomasprime/vim-snippets

Plug 'ntpeters/vim-better-whitespace'
" Better whitespace highlighting
" https://github.com/ntpeters/vim-better-whitespace

Plug 'sheerun/vim-polyglot'
" https://github.com/sheerun/vim-polyglot
" A solid language pack

Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
" Like a fuzzy finder but more generic
" https://github.com/Shougo/denite.nvim

Plug 'Shougo/neoyank.vim'
" Saves yank history
" https://github.com/Shougo/neoyank.vim

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

Plug 'tpope/vim-obsession'
" Maintain current state
" https://github.com/tpope/vim-obsession
Plug 'dhruvasagar/vim-prosession'
" Handle sessions like a pro
" https://github.com/dhruvasagar/vim-prosession

Plug 'tpope/vim-projectionist'
" Granular project configuration using projections
" https://github.com/tpope/vim-projectionist

Plug 'tpope/vim-ragtag'
" A set of mappings for HTML, XML, PHP, ASP, eRuby, JSP, and more (formerly allml)
" https://github.com/tpope/vim-ragtag

Plug 'tpope/vim-repeat'
" Remaps . to repeat entire map rather than the last native command inside the
" map
" https://github.com/tpope/vim-repeat

Plug 'tpope/vim-rsi'
" Readline mappings in insert and command line mode
" https://github.com/tpope/vim-rsi

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

Plug 'wincent/terminus'
" Terminus enhances Vim's and Neovim's integration with the terminal
" https://github.com/wincent/terminus
call plug#end()

" chriskempson/base16-vim
function! s:base16_theme()
  if filereadable(expand("~/.vimrc_background"))
    let base16colorspace=256
    source ~/.vimrc_background
  endif
endfunction

call s:base16_theme()

augroup nomasprime_theme
  autocmd!
  autocmd VimResume * call s:base16_theme()
augroup END

function! s:update_highlights()
  hi Comment cterm=italic gui=italic

  call NeoCursorLine({
  \ 'dim': 6,
  \ 'cursor_column_dim': 3,
  \ 'pop': 1,
  \ 'visual': 1,
  \ })

  hi CursorLineNr ctermbg=none guibg=none
  hi LineNr ctermbg=none guibg=none
  hi SignColumn ctermbg=none guibg=none
  hi VertSplit ctermbg=none guibg=none
  hi DiffAdd ctermbg=none guibg=none
  hi DiffDelete ctermbg=none guibg=none
  hi DiffChange ctermbg=none guibg=none
  hi FoldColumn ctermbg=none guibg=none
  hi Folded ctermbg=none guibg=none
  hi SignifySignAdd ctermbg=none guibg=none
  hi SignifySignDelete ctermbg=none guibg=none
  hi SignifySignChange ctermbg=none guibg=none
  hi! link Sneak IncSearch
  hi! link SneakLabel IncSearch
  hi! link SneakScope Visual
  hi! link WildMenu Search
endfunction

augroup nomasprime_update_highlights
  autocmd!
  autocmd User AirlineAfterTheme call s:update_highlights()
  autocmd ColorScheme * call s:update_highlights()
augroup END

" dhruvasagar/vim-prosession
let g:prosession_dir = '~/.nvim/session'

" iamcco/markdown-preview.nvim
let g:mkdp_page_title = '${name}'
nmap <LocalLeader>p <Plug>MarkdownPreviewToggle

" janko-m/vim-test
function! s:TestSwitchStrategy()
  if exists('g:test#strategy') && g:test#strategy == 'neomake'
    let g:test#strategy = 'neovim'
    unlet g:test#javascript#jest#options
  else
    let g:test#strategy = 'neomake'
    let g:test#javascript#jest#options = '--reporters jest-vim-reporter'
  endif
endfunction
call s:TestSwitchStrategy()

nmap <silent> <Leader>tn :up <Bar> :TestNearest<CR>
nmap <silent> <Leader>tf :up <Bar> :TestFile<CR>
nmap <silent> <Leader>ts :up <Bar> :TestSuite<CR>
nmap <silent> <Leader>tS :up <Bar> :call <SID>TestSwitchStrategy() <Bar> :echo 'Test strategy: ' . g:test#strategy<CR>
nmap <silent> <Leader>tl :up <Bar> :TestLast<CR>
nmap <silent> <Leader>tv :up <Bar> :TestVisit<CR>

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

" mhinz/vim-signify
nmap <silent> [h <plug>(signify-prev-hunk)
nmap <silent> [<c-h> 9999[h
nmap <silent> ]h <plug>(signify-next-hunk)
nmap <silent> ]<c-h> 9999]h
nmap <silent> <LocalLeader>hd :SignifyHunkDiff<CR>
nmap <silent> <LocalLeader>hu :SignifyHunkUndo<CR>
omap ih <plug>(signify-motion-inner-pending)
xmap ih <plug>(signify-motion-inner-visual)
omap ah <plug>(signify-motion-outer-pending)
xmap ah <plug>(signify-motion-outer-visual)

" neoclide/coc.nvim
nmap <silent> [n <Plug>(coc-diagnostic-prev)
nmap <silent> [<c-n> 9999[n
nmap <silent> ]n <Plug>(coc-diagnostic-next)
nmap <silent> ]<c-n> 9999]n
nmap <silent> <Leader>] <Plug>(coc-definition)
nmap <silent> <Leader>[ <Plug>(coc-type-definition)
nmap <silent> <Leader>{ <Plug>(coc-implementation)
nmap <silent> <Leader>} <Plug>(coc-references)

nnoremap <silent> <LocalLeader>] :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

autocmd CursorHold * silent call CocActionAsync('highlight')
hi! link CocHighlightText CursorLine

nmap <leader>%s <Plug>(coc-rename)

xmap <LocalLeader>=  <Plug>(coc-format-selected)
nmap <LocalLeader>=  <Plug>(coc-format-selected)
command! -nargs=0 Format :call CocAction('format')

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

xmap <silent> <LocalLeader>a <Plug>(coc-codeaction-selected)
nmap <silent> <LocalLeader>a <Plug>(coc-codeaction-selected)
nmap <silent> <LocalLeader>A <Plug>(coc-codeaction)

nmap <silent> <LocalLeader>n <Plug>(coc-fix-current)

xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

nmap <silent> <LocalLeader>v <Plug>(coc-range-select)
xmap <silent> <LocalLeader>v <Plug>(coc-range-select)

" neoclide/coc-denite
nnoremap <silent> <Leader>c :Denite coc-command<CR>
nnoremap <silent> <Leader>C :Denite coc-source<CR>
nnoremap <silent> <Leader>l :Denite coc-service<CR>
nnoremap <silent> <Leader>n :Denite coc-diagnostic<CR>
nnoremap <silent> <LocalLeader>s :Denite coc-symbols<CR>
nnoremap <silent> <Leader>s :Denite coc-workspace<CR>

" neoclide/coc-highlight
nnoremap <silent> <LocalLeader>cp :call CocAction('pickColor')<CR>
nnoremap <silent> <LocalLeader>cr :call CocAction('colorPresentation')<CR>

" neoclide/coc-snippets
imap <C-l> <Plug>(coc-snippets-expand)
imap <C-j> <Plug>(coc-snippets-expand-jump)
vmap <C-j> <Plug>(coc-snippets-select)
let g:coc_snippet_next = '<c-j>'
let g:coc_snippet_prev = '<c-k>'

" neomake/neomake
let g:neomake_echo_current_error = 0

let g:neomake_error_sign = {
  \ 'text': '',
  \ 'texthl': 'NeomakeErrorSign',
  \ }

let g:neomake_info_sign = {
  \ 'text': '',
  \ 'texthl': 'NeomakeInfoSign'
  \ }

let g:neomake_message_sign = {
  \   'text': '',
  \   'texthl': 'NeomakeMessageSign',
  \ }

let g:neomake_postprocess = 'neomake#postprocess#compress_whitespace'

let g:neomake_warning_sign = {
  \   'text': '',
  \   'texthl': 'NeomakeWarningSign',
  \ }

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

nnoremap <silent> <Leader>. :Denite -resume<CR>
nnoremap <silent> <Leader>: :Denite command<CR>
nnoremap <silent> <Leader>` :Denite mark<CR>
nnoremap <silent> <LocalLeader>] :Denite outline<CR>
nnoremap <silent> <Leader>" :Denite register<CR>
nnoremap <silent> <Leader>- :DeniteProjectDir directory_rec<CR>
nnoremap <silent> <Leader>* :<C-u>DeniteCursorWord grep:.<CR>
nnoremap <silent> <LocalLeader>/ :Denite line<CR>
nnoremap <silent> <Leader>/ :<C-u>Denite grep:. -no-empty<CR>
nnoremap <silent> <LocalLeader>c :Denite change<CR>
nnoremap <silent> <Leader>b :Denite buffer<CR>
nnoremap <silent> <Leader>e :DeniteProjectDir file/rec<CR>
nnoremap <silent> <Leader>j :Denite jump<CR>
nnoremap <silent> <Leader>r :Denite command_history<CR>
nnoremap <silent> <Leader>y :Denite neoyank<CR>

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

" vim-airline/vim-airline
function! WindowNumber(...)
  let builder = a:1
  let context = a:2
  call builder.add_section('airline_b', ' %{tabpagewinnr(tabpagenr())} ')

  return 0
endfunction

call airline#add_statusline_func('WindowNumber')
call airline#add_inactive_statusline_func('WindowNumber')

let g:airline_left_alt_sep = ''
let g:airline_left_sep = ''
let g:airline_powerline_fonts = 1
let g:airline_right_alt_sep = ''
let g:airline_right_sep = ''

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_symbols.linenr = ''
let g:airline_symbols.maxlinenr = ''
let g:airline_theme = 'base16'

let g:airline#extensions#branch#displayed_head_limit = 16
let g:airline#extensions#branch#format = 0
let g:airline#extensions#wordcount#formatter#default#fmt = '%sW'
let g:airline#extensions#wordcount#formatter#default#fmt_short = '%sW'

" wincent/terminus
let g:TerminusCursorShape=0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Lib
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Buffers
function! DeleteHiddenBuffers()
  let tpbl=[]
  call map(range(1, tabpagenr('$')), 'extend(tpbl, tabpagebuflist(v:val))')

  for buf in filter(range(1, bufnr('$')), 'bufexists(v:val) && index(tpbl, v:val)==-1')
    silent execute 'bwipeout' buf
  endfor
endfunction

command Bdh call DeleteHiddenBuffers()

" Copy/Paste/Move
augroup nomasprime_text_yank_post
  autocmd!
  autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank('Visual', 500)
augroup END

" Energy Saver
function! s:on_battery()
  if has('macunix')
    return match(system('pmset -g batt'), "Now drawing from 'Battery Power'") != -1
  elseif has('unix')
    return readfile('/sys/class/power_supply/AC/online') == ['0']
  endif

  return 0
endfunction

let s:energy_saver_on_battery = -1

function! s:energy_saver(timer)
  let s:on_battery = s:on_battery()
  if s:energy_saver_on_battery == s:on_battery | return | endif
  let s:energy_saver_on_battery = s:on_battery

  if s:energy_saver_on_battery
    set updatetime=1500
  else
    set updatetime=300
  endif
endfunction

call s:energy_saver(0)
call timer_start(15000, function('s:energy_saver'), {'repeat': -1})

" Line Numbers
set number relativenumber

augroup number_toggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

nnoremap <silent> <C-n> :set relativenumber!<CR>

" Lists
command! Cnext try | silent! cnext | catch | silent! cfirst | catch | endtry
command! Cprev try | silent! cprev | catch | silent! clast | catch | endtry
command! Lnext try | silent! lnext | catch | silent! lfirst | catch | endtry
command! Lprev try | silent! lprev | catch | silent! llast | catch | endtry
nnoremap <silent> [q :Cprev<cr>
nnoremap <silent> [<c-q> :cfirst<cr>
nnoremap <silent> ]q :Cnext<cr>
nnoremap <silent> ]<c-q> :clast<cr>
nnoremap <silent> [l :Lprev<cr>
nnoremap <silent> [<c-l> :lfirst<cr>
nnoremap <silent> ]l :Lnext<cr>
nnoremap <silent> ]<c-l> :llast<cr>

" Spelling
nnoremap <silent> <LocalLeader>S :setlocal spell!<cr>
inoremap <silent> <LocalLeader>S <C-O>:setlocal spell!<cr>
nnoremap <silent> <Leader>S :set spell!<cr>
inoremap <silent> <Leader>S <C-O>:set spell!<cr>
