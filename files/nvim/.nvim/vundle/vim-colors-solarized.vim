" Precision colors for machines and people
Bundle 'altercation/vim-colors-solarized'

" Colours and Fonts
syntax enable
set background=light
colorscheme solarized

" CursorLine
hi! link CursorLineNr CursorLine

" VertSplit
hi! link VertSplit SignColumn

" Popup menu
hi! link PMenu DiffAdd
hi! link PMenuSel DiffChange
hi! link PMenuSbar DiffAdd
hi! link PMenuThumb DiffAdd

" hi! link SignColumn   LineNr

" Special characters
hi! link NonText SpecialKey
