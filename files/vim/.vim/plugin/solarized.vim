" Precision colors for machines and people

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
