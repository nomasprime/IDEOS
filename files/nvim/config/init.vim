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
set list listchars=tab:‣\ ,trail:• " Show tabs and trailing spaces
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
set linebreak " Wrap long lines at a character in 'breakat' rather than last character that fits on the screen
set number " Show line numbers
set textwidth=120
set wrap " Wrap long lines
set wrapmargin=0

" netrw
let g:netrw_banner=1 " vim-vinegar
let g:netrw_localrmdir='rm -r'

" Registers
set clipboard=unnamed

" Search
nmap <silent> // :nohlsearch<CR>
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
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Was at the top but moved to the bottom because some settings depend on
" general Vim settings.
call plug#begin()
Plug 'aaronjensen/vim-sass-status'
Plug 'airblade/vim-gitgutter'
Plug 'briandoll/change-inside-surroundings.vim'
Plug 'chrisbra/Colorizer'
Plug 'chriskempson/base16-vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'digitaltoad/vim-pug'
Plug 'elixir-lang/vim-elixir'
Plug 'hashivim/vim-consul'
Plug 'hashivim/vim-terraform'
Plug 'hashivim/vim-vagrant'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-easymotion.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'honza/vim-snippets'
Plug 'itspriddle/vim-jquery'
Plug 'janko-m/vim-test'
" Plug 'jelera/vim-javascript-syntax'
Plug 'jtratner/vim-flavored-markdown'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/vim-easy-align'
Plug 'juvenn/mustache.vim'
" Plug 'kchmck/vim-coffee-script'
Plug 'kshenoy/vim-signature'
Plug 'Lokaltog/vim-easymotion'
Plug 'ludovicchabant/vim-gutentags'
Plug 'majutsushi/tagbar'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'mhinz/vim-grepper'
Plug 'moll/vim-node'
Plug 'nelstrom/vim-visual-star-search'
Plug 'pearofducks/ansible-vim'
Plug 'peterhost/YankRing.vim'
Plug 'puppetlabs/puppet-syntax-vim'
Plug 'radenling/vim-dispatch-neovim'
Plug 'Raimondi/delimitMate'
Plug 'scrooloose/syntastic'
Plug 'SirVer/ultisnips'
Plug 'sjl/gundo.vim'
Plug 'tomtom/tcomment_vim'
Plug 'tomtom/tlib_vim'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'tpope/vim-haml'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-rbenv'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'Valloric/YouCompleteMe'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-ruby/vim-ruby'
Plug 'vim-scripts/camelcasemotion'
Plug 'vim-scripts/ExplainPattern'
Plug 'vim-scripts/sudo.vim'
Plug 'vim-scripts/TagHighlight'
" Plug 'walm/jshint.vim'
Plug 'wavded/vim-stylus'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" chriskempson/base16-vim
let base16colorspace=256
set background=light
colorscheme base16-google-light

" ervandew/eclim
let g:EclimCompletionMethod='omnifunc'

" haya14busa/incsearch.vim
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

set hlsearch
let g:incsearch#auto_nohlsearch=1
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

" janko-m/vim-test
nmap <silent> <Leader>tn :TestNearest<CR>
nmap <silent> <Leader>tf :TestFile<CR>
nmap <silent> <Leader>ts :TestSuite<CR>
nmap <silent> <Leader>tl :TestLast<CR>
nmap <silent> <Leader>tv :TestVisit<CR>

" junegunn/goyo.vim
let g:goyo_width=100

" junegunn/vim-easy-align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" kien/ctrlp.vim
let g:ctrlp_clear_cache_on_exit=0
let g:ctrlp_map='<Leader>f'
let g:ctrlp_show_hidden=1

" majutsushi/tagbar
let g:tagbar_ctags_bin='/opt/boxen/homebrew/bin/ctags'
nnoremap <Leader>t :TagbarToggle<CR>

" mhinz/vim-grepper
nnoremap <Leader>g :Grepper<CR>

" peterhost/YankRing.vim
let g:yankring_history_file='.nvim/yankring_history'
nnoremap <Leader>y :YRShow<CR>

" puppetlabs/puppet-syntax-vim
let g:puppet_align_hashes = 0

" Raimondi/delimitMate
let g:delimitMate_expand_cr=1

" scrooloose/syntastic
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
let g:syntastic_ruby_checkers=['rubocop']

" SilVer/ultisnips
let g:UltiSnipsExpandTrigger='<C-K>'
let g:UltiSnipsJumpForwardTrigger='<C-K>'
let g:UltiSnipsJumpBackwardTrigger='<S-C-J>'

" sjl/gundo.vim
let g:gundo_right=1
nnoremap <Leader>u :GundoToggle<CR>

" Valloric/YouCompleteMe
let g:ycm_register_as_syntastic_checker=0

" vim-airline/vim-airline
let g:airline_left_alt_sep='|'
let g:airline_left_sep=''
let g:airline_right_alt_sep='|'
let g:airline_right_sep=''
let g:airline_powerline_fonts=1
let g:airline_theme='base16'

" xolox/vim-session
let g:session_autosave='no'
