" Precision colors for machines and people
Bundle 'altercation/vim-colors-solarized'

" Line numbers
hi! LineNR guifg=#004C60 gui=bold guibg=#002B36 ctermfg=146

" NonText subtle like VertSplit
hi! link NonText VertSplit

" Popup menu
hi! link PMenu DiffAdd
hi! link PMenuSel DiffChange
hi! link PMenuSbar DiffAdd
hi! link PMenuThumb DiffAdd

" ShowMarks
if exists('loaded_showmarks')
    hi! link SignColumn   LineNr
    hi! link ShowMarksHLl DiffAdd
    hi! link ShowMarksHLu DiffChange
    hi! link ShowMarksHLo DiffAdd
    hi! link ShowMarksHLm DiffChange
endif

" Vertical split less invasive
hi! VertSplit guibg=#002b36 guifg=#003745 cterm=NONE term=NONE ctermfg=NONE ctermbg=NONE
