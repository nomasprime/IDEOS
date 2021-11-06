" Select option and press K to lookup option in NeoVim help

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Core
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Colours
set termguicolors

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

  autocmd VimLeave,VimSuspend * set guicursor=a:ver25-blinkwait500-blinkoff250-blinkon250-Cursor/lCursor
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
set timeoutlen=1000

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

" Quickfix
autocmd FileType qf if (getwininfo(win_getid())[0].loclist != 1) | wincmd J | endif

" Registers
set clipboard=unnamed

" Search
nmap <silent> // :nohlsearch<CR>
set hlsearch
set ignorecase smartcase
set incsearch

" Scrolling
set scrolloff=3
set sidescroll=0
set sidescrolloff=3
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
autocmd VimResized * :wincmd =

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Was at the top but moved to the bottom because some settings depend on
" general Vim settings.
call plug#begin('~/.config/nvim/plugged')

Plug 'AndrewRadev/splitjoin.vim'
" Single/multi-line switching
" https://github.com/AndrewRadev/splitjoin.vim

Plug 'antoinemadec/FixCursorHold.nvim'
" Fix CursorHold Performance
" https://github.com/antoinemadec/FixCursorHold.nvim

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

Plug 'christoomey/vim-tmux-runner'
" A simple, vimscript only, command runner for sending commands from vim to tmux
" https://github.com/christoomey/vim-tmux-runner

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

Plug 'iamcco/coc-diagnostic', { 'do': 'yarn install --frozen-lockfile' }
" Diagnostics for CoC
" https://github.com/iamcco/coc-diagnostic

Plug 'iamcco/coc-flutter', { 'do': 'yarn install --frozen-lockfile' }
" Flutter support for coc.nvim
" https://github.com/iamcco/coc-flutter

Plug 'iamcco/coc-spell-checker', { 'do': 'yarn install --frozen-lockfile' }
" https://github.com/iamcco/coc-spell-checker

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

Plug 'neoclide/coc.nvim', { 'branch': 'release' }
" Make your Vim/Neovim as smart as VSCode
" https://github.com/neoclide/coc.nvim
Plug 'neoclide/coc-css', { 'do': 'yarn install --frozen-lockfile' }
Plug 'neoclide/coc-highlight', { 'do': 'yarn install --frozen-lockfile' }
Plug 'neoclide/coc-html', { 'do': 'yarn install --frozen-lockfile' }
Plug 'neoclide/coc-json', { 'do': 'yarn install --frozen-lockfile' }
Plug 'nomasprime/coc-lists', { 'do': 'yarn install --frozen-lockfile' }
Plug 'neoclide/coc-pairs', { 'do': 'yarn install --frozen-lockfile' }
Plug 'neoclide/coc-python', { 'do': 'yarn install --frozen-lockfile' }
Plug 'neoclide/coc-snippets', { 'do': 'yarn install --frozen-lockfile' }
Plug 'neoclide/coc-solargraph', { 'do': 'yarn install --frozen-lockfile' }
Plug 'neoclide/coc-tsserver', { 'do': 'yarn install --frozen-lockfile' }
Plug 'neoclide/coc-yaml', { 'do': 'yarn install --frozen-lockfile' }
Plug 'neoclide/coc-yank', { 'do': 'yarn install --frozen-lockfile' }

Plug 'nomasprime/neocursorline.nvim', { 'do': { -> neocursorline#install() } }
" https://github.com/nomasprime/neocursorline.nvim

Plug 'nomasprime/vim-snippets'
" Default snippets
" https://github.com/nomasprime/vim-snippets

Plug 'ntpeters/vim-better-whitespace'
" Better whitespace highlighting
" https://github.com/ntpeters/vim-better-whitespace

Plug 'nvim-treesitter/nvim-treesitter-textobjects'
" https://github.com/nvim-treesitter/nvim-treesitter-textobjects

Plug 'nvim-treesitter/nvim-treesitter'
" https://github.com/nvim-treesitter/nvim-treesitter

Plug 'p00f/nvim-ts-rainbow'
" https://github.com/p00f/nvim-ts-rainbow

Plug 'romgrk/nvim-treesitter-context'
" https://github.com/romgrk/nvim-treesitter-context

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

" chaoren/vim-wordmotion
let g:wordmotion_mappings = {
\ 'w' : '<M-w>',
\ 'b' : '<M-b>',
\ 'e' : '<M-e>',
\ 'ge' : 'g<M-e>',
\ 'aw' : 'a<M-w>',
\ 'iw' : 'i<M-w>',
\ '<C-R><C-W>' : '<C-R><M-w>'
\ }

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
  autocmd VimResume * ++nested call s:base16_theme()
augroup END

function! s:update_highlights()
  hi Comment cterm=italic gui=italic

  call NeoCursorLine({
  \ 'dim': 6,
  \ 'cursor_column_dim': 3,
  \ 'pop': 1,
  \ 'visual': 1,
  \ })

  hi CursorLineNr cterm=none ctermbg=none gui=none guibg=none
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
  hi! link HighlightedyankRegion Visual
  hi! link Sneak IncSearch
  hi! link SneakLabel IncSearch
  hi! link SneakScope Visual
  hi! link WildMenu Search
endfunction

augroup nomasprime_update_highlights
  autocmd!
  autocmd User AirlineAfterTheme call s:update_highlights()
augroup END

" christoomey/vim-tmux-runner
nnoremap <Leader>xa :VtrAttachToPane<cr>
nnoremap <Leader>xd :VtrDetachRunner<cr>
nnoremap <Leader>xu :VtrFlushCommand<cr>
nnoremap <Leader>x: :VtrSendCommandToRunner<cr>
nnoremap <Leader>xl :VtrClearRunner<cr>
nnoremap <Leader>xz :VtrFocusRunner<cr>
nnoremap <Leader>xc :VtrKillRunner<cr>
nnoremap <Leader>xn :VtrOpenRunner<cr>
nnoremap <LocalLeader>x% :up <Bar> :VtrSendFile<cr>
nnoremap <LocalLeader>x. :up <Bar> :VtrSendLinesToRunner<cr>
vnoremap <LocalLeader>x :up <Bar> :VtrSendLinesToRunner<cr>

" dhruvasagar/vim-prosession
let g:prosession_dir = '~/.nvim/session'

" iamcco/markdown-preview.nvim
let g:mkdp_browser = 'Safari'
let g:mkdp_page_title = '${name}'
nmap <LocalLeader>mp <Plug>MarkdownPreviewToggle

" janko-m/vim-test
let g:test#strategy = 'vtr'
nmap <silent> <Leader>td :up <Bar> :TestSuite<CR>
nmap <silent> <Leader>te :up <Bar> :TestVisit<CR>
nmap <silent> <Leader>tp :up <Bar> :TestLast<CR>
nmap <silent> <LocalLeader>t% :up <Bar> :TestFile<CR>
nmap <silent> <LocalLeader>t. :up <Bar> :TestNearest<CR>

" justinmk/vim-dirvish
nmap <silent> <Leader>e <Plug>(dirvish_up)

augroup dirvish_config
  autocmd!
  autocmd FileType dirvish nmap <buffer> <Leader>e <Nop>
  autocmd FileType dirvish nmap <buffer> - <Plug>(dirvish_up)
  autocmd FileType dirvish silent! unmap <buffer> gq
  autocmd FileType dirvish nmap <buffer> q <Plug>(dirvish_quit)
  autocmd FileType dirvish silent! unmap <buffer> o
  autocmd FileType dirvish nnoremap <silent><buffer> os :call dirvish#open('split', 1)<CR>
  autocmd FileType dirvish silent! unmap <buffer> O
  autocmd FileType dirvish xnoremap <silent><buffer> os :call dirvish#open('split', 1)<CR>
  autocmd FileType dirvish silent! unmap <buffer> a
  autocmd FileType dirvish nnoremap <silent><buffer> ov :call dirvish#open('vsplit', 1)<CR>
  autocmd FileType dirvish silent! unmap <buffer> A
  autocmd FileType dirvish xnoremap <silent><buffer> ov :call dirvish#open('vsplit', 1)<CR>
  autocmd FileType dirvish silent! unmap <buffer> x
  autocmd FileType dirvish nmap <buffer> s <Plug>(dirvish_arg)
  autocmd FileType dirvish xmap <buffer> s <Plug>(dirvish_arg)
  autocmd FileType dirvish silent! unmap <buffer> dax
  autocmd FileType dirvish nnoremap <silent><buffer> ds :<C-U>arglocal<Bar>silent! argdelete *<Bar>echo "arglist: cleared"<Bar>Dirvish %<CR>
  autocmd FileType dirvish silent! unmap <buffer> R
  autocmd FileType dirvish nnoremap <silent><buffer> <C-l> :<C-U><C-R>=v:count ? ':let g:dirvish_mode='.v:count.'<Bar>' : ''<CR>Dirvish %<CR>
  autocmd FileType dirvish setlocal nocursorcolumn
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

" mattn/gist-vim
let g:gist_post_private = 1

" mbbill/undotree
nnoremap <Leader>u :UndotreeToggle<CR>

" mhinz/vim-signify
let g:signify_sign_change = '~'
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
function! s:coc_jump_definition_with_tags_fallback(jump_definition_action)
  if CocAction(a:jump_definition_action)
    return v:true
  endif

  execute("silent! normal \<C-]>")
endfunction

inoremap <silent><expr> <CR> "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
inoremap <silent><expr> <C-y> pumvisible() ? coc#_select_confirm() : "\<C-y>"

nmap <silent> [a <Plug>(coc-diagnostic-prev)
nmap <silent> [<c-a> 9999[a
nmap <silent> ]a <Plug>(coc-diagnostic-next)
nmap <silent> ]<c-a> 9999]a
nmap <silent> <Leader>gd :call <SID>coc_jump_definition_with_tags_fallback('jumpDefinition')<CR>
nmap <silent> <Leader>gD :call <SID>coc_jump_definition_with_tags_fallback('jumpTypeDefinition')<CR>
nmap <silent> <Leader>gi :call <SID>coc_jump_definition_with_tags_fallback('jumpImplementation')<CR>
nmap <silent> <Leader>gr <Plug>(coc-references)

nnoremap <silent> <LocalLeader>k :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

autocmd CursorHold * silent call CocActionAsync('highlight')
hi! link CocHighlightText CursorLine

nmap <leader>cr <Plug>(coc-rename)

xmap <LocalLeader>gq  <Plug>(coc-format-selected)
nmap <LocalLeader>gq  <Plug>(coc-format-selected)
command! -nargs=0 Format :call CocAction('format')

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

xmap <silent> <LocalLeader>ca <Plug>(coc-codeaction-selected)
nmap <silent> <LocalLeader>ca <Plug>(coc-codeaction)

nmap <silent> <LocalLeader>aq <Plug>(coc-fix-current)

nnoremap <silent> <Leader>" :<C-u>CocList registers<CR>
nnoremap <silent> <Leader>* :exe 'CocList -I --input='.expand('<cword>').' grep'<CR>
nnoremap <silent> <LocalLeader>* :exe 'CocList -I --normal --input='.expand('<cword>').' words'<CR>
nnoremap <silent> <Leader>. :<C-u>CocListResume<CR>
nnoremap <silent> <Leader>/ :<C-u>CocList grep<CR>
nnoremap <silent> <LocalLeader>/ :<C-u>CocList lines<CR>
nnoremap <silent> <Leader>: :<C-u>CocList vimcommands<CR>
nnoremap <silent> <LocalLeader>] :<C-u>CocList tags<CR>
nnoremap <silent> <Leader>` :<C-u>CocList marks<CR>
nnoremap <silent> <Leader>b :<C-u>CocList buffers<CR>
nnoremap <silent> <LocalLeader>c :CocList changes<CR>
nnoremap <silent> <Leader>cc :<C-u>CocList commands<CR>
nnoremap <silent> <Leader>cC :<C-u>CocList sources<CR>
nnoremap <silent> <Leader>ce :<C-u>CocList services<CR>
nnoremap <silent> <Leader>ca :<C-u>CocList diagnostics<CR>
nnoremap <silent> <LocalLeader>cs :<C-u>CocList outline<CR>
nnoremap <silent> <Leader>cs :<C-u>CocList -I symbols<CR>
nnoremap <silent> <Leader>d :<C-u>CocList directories<CR>
nnoremap <silent> <Leader>f :<C-u>CocList files<CR>
nnoremap <silent> <Leader>k :<C-u>CocList helptags<CR>
nnoremap <silent> <Leader>j :<C-u>CocList jumps<CR>
nnoremap <silent> <Leader>o :<C-u>CocList mru<CR>
nnoremap <silent> <Leader>r :<C-u>CocList cmdhistory<CR>
nnoremap <silent> <Leader>R :<C-u>CocList searchhistory<CR>
nnoremap <silent> <Leader>y :<C-u>CocList -A --normal yank<CR>

" neoclide/coc-highlight
nnoremap <silent> <LocalLeader>cp :call CocAction('pickColor')<CR>
nnoremap <silent> <LocalLeader>cP :call CocAction('colorPresentation')<CR>

" neoclide/coc-snippets
imap <C-l> <Plug>(coc-snippets-expand)
imap <C-j> <Plug>(coc-snippets-expand-jump)
vmap <C-j> <Plug>(coc-snippets-select)
let g:coc_snippet_next = '<c-j>'
let g:coc_snippet_prev = '<c-k>'

" milkypostman/vim-togglelist
let g:toggle_list_no_mappings = 1
nmap <script> <silent> <localleader>l :call ToggleLocationList()<CR>
nmap <script> <silent> <leader>q :call ToggleQuickfixList()<CR>

" ntpeters/vim-better-whitespace
let g:better_whitespace_operator = '<LocalLeader>dh'

" nvim-treesitter/nvim-treesitter
lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained",
  highlight = {
    enable = true,
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<LocalLeader>vv",
      node_incremental = "<LocalLeader>vk",
      scope_incremental = "<LocalLeader>vK",
      node_decremental = "<LocalLeader>vj",
    },
  },
  indent = {
    enable = false,
  },
  rainbow = {
    enable = true,
    extended_mode = true,
  },
  textobjects = {
    move = {
      enable = true,
      set_jumps = true,
      goto_next_start = {
        ["]m"] = "@function.outer",
        ["]c"] = "@class.outer",
      },
      goto_next_end = {
        ["]M"] = "@function.outer",
        ["]C"] = "@class.outer",
      },
      goto_previous_start = {
        ["[m"] = "@function.outer",
        ["[c"] = "@class.outer",
      },
      goto_previous_end = {
        ["[M"] = "@function.outer",
        ["[C"] = "@class.outer",
      },
    },
    select = {
      enable = true,
      keymaps = {
        ["am"] = "@function.outer",
        ["im"] = "@function.inner",
        ["ac"] = "@class.outer",
        ["ic"] = "@class.inner",
      },
    },
  },
}
EOF

" romgrk/nvim-treesitter-context
lua <<EOF
require'treesitter-context.config'.setup {
    enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
}
EOF

" vim-airline/vim-airline
function! WindowBufferMap(...)
  let builder = a:1
  let context = a:2
  call builder.add_section('airline_b', ' %{tabpagewinnr(tabpagenr())}/%{winbufnr(winnr())} ')

  return 0
endfunction

call airline#add_statusline_func('WindowBufferMap')
call airline#add_inactive_statusline_func('WindowBufferMap')

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
    let g:cursorhold_updatetime = 500
  else
    let g:cursorhold_updatetime = 100
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

nnoremap <silent> <LocalLeader>n :set relativenumber!<CR>

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

" Tabs
nnoremap <silent> <m-t>n :tabnew<cr>
nnoremap <silent> <m-t>c :tabclose<cr>
nnoremap <silent> <m-t>o :tabonly<cr>
