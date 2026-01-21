" clear previous coloring
hi clear
syntax reset

" set :colorscheme name
let g:colors_name = "purple"

" line and column highlighting
" set cursorline and set cursorcolumn
" CC75FF
hi CursorLine		cterm=NONE guifg=NONE guibg=NONE
hi CursorColumn		guifg=#000000 guibg=#FFFFFF

" line numbers on side
" set number and set nonumber
hi LineNr		guifg=#FFFFFF guibg=NONE
hi CursorLineNr		guifg=#AE27FE guibg=NONE cterm=bold,underline

" for status bars at bottom of split windows
hi StatusLine		guifg=#AE27FE guibg=#FFFFFF
hi StatusLineNC		guifg=#571380 guibg=#FFFFFF
hi StatusLineTerm	guifg=#000000 guibg=#AE27FE
hi StatusLineTermNC	guifg=#000000 guibg=#571380

hi VertSplit		guifg=#FFFFFF guibg=#AE27FE

hi TabLine		guifg=#FFFFFF guibg=#571380 cterm=NONE
hi TabLineSel		guifg=#FFFFFF guibg=#AE27FE
hi TabLineFill		guibg=NONE cterm=NONE

hi Normal		guifg=#FFFFFF guibg=NONE
hi Comment		guifg=#0000FF guibg=NONE cterm=italic,bold
hi Constant		guifg=#FFFFFF guibg=NONE cterm=bold
hi Identifier		guifg=#FFFFFF guibg=NONE
hi Statement		guifg=#CC75FF guibg=NONE
hi PreProc		guifg=#CC75FF guibg=NONE cterm=bold,italic
hi Type			guifg=#CC75FF guibg=NONE cterm=bold
hi Special		guifg=#FFFFFF guibg=NONE cterm=bold

hi MatchParen		guifg=#000000 guibg=#FFFFFF cterm=bold

hi Search		guifg=#000000 guibg=#CC75FF cterm=bold
hi IncSearch		guifg=#000000 guibg=#CC75FF cterm=bold
hi Visual		guifg=#000000 guibg=#CC75FF cterm=bold

hi Error		guifg=#FF0000 guibg=#888888 cterm=italic,bold
hi Todo			guifg=#FFFF00 guibg=#000000 cterm=bold
