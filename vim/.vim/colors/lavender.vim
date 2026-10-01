" color palette
" #F3ECFF
" #D1B7FF
" #A277FF
" #5A2EA6
" #1A0B2E

" clear previous coloring
hi clear
syntax reset

" set :colorscheme name
let g:colors_name = "lavender"

" line and column highlighting
hi CursorLine       cterm=NONE guifg=NONE guibg=NONE
hi CursorColumn     guifg=NONE guibg=NONE cterm=NONE

" line numbers on side
hi LineNr           guifg=#F3ECFF guibg=NONE
hi CursorLineNr     guifg=#1A0B2E guibg=#A277FF cterm=bold
hi EndOfBuffer      guifg=#A277FF guibg=NONE

" status bars at bottom of split windows
hi StatusLine       guifg=#A277FF guibg=#000000
hi StatusLineNC     guifg=#5A2EA6 guibg=#FFFFFF
hi StatusLineTerm   guifg=#000000 guibg=#A277FF
hi StatusLineTermNC guifg=#000000 guibg=#5A2EA6

" color of vertical split bar
hi VertSplit        guifg=#5A2EA6 guibg=#FFFFFF

" top tab bar
hi TabLine          guifg=#FFFFFF guibg=#5A2EA6 cterm=NONE
hi TabLineSel       guifg=#000000 guibg=#A277FF
hi TabLineFill      guibg=#5A2EA6 cterm=NONE
hi Title            guifg=#FFFFFF

" preview menu for autocomplete
hi Pmenu            guifg=#FFFFFF guibg=#5A2EA6
hi PmenuSel         guifg=#FFFFFF guibg=#A277FF
hi PmenuSBar        guibg=#5A2EA6
hi PmenuThumb       guibg=#FFFFFF

hi Directory        guifg=#A277FF

hi Question         guifg=#6060FF cterm=bold
hi MoreMsg          guifg=#6060FF cterm=bold

" diff output
hi DiffAdd          guifg=#000000 guibg=#00FF00
hi DiffChange       guifg=#000000 guibg=#FFFF00
hi DiffDelete       guifg=#000000 guibg=#FF0000
hi DiffText         guifg=#FFFFFF guibg=#0000FF cterm=bold

" folded lines
hi Folded           guifg=#6060FF guibg=NONE cterm=bold
hi FoldColumn       guifg=#6060FF guibg=NONE cterm=bold

hi QuickFixLine     guifg=#1A0B2E guibg=#D1B7FF cterm=bold

" file text
hi Normal           guifg=#F3ECFF guibg=#1A0B2E
hi Comment          guifg=#6060FF guibg=NONE cterm=italic,bold
hi Constant         guifg=#D1B7FF guibg=NONE cterm=bold
hi Identifier       guifg=#A277FF guibg=NONE cterm=bold
hi Statement        guifg=#A277FF guibg=NONE cterm=bold
hi PreProc          guifg=#A277FF guibg=NONE cterm=bold,italic
hi Type             guifg=#A277FF guibg=NONE cterm=bold
hi Special          guifg=#A277FF guibg=NONE cterm=bold

hi MatchParen       guifg=#1A0B2E guibg=#A277FF cterm=bold

hi Search           guifg=#1A0B2E guibg=#A277FF cterm=bold
hi IncSearch        guifg=#D1B7FF guibg=#6060FF cterm=bold
hi Visual           guifg=#1A0B2E guibg=#A277FF cterm=bold

hi Error            guifg=#000000 guibg=#FF0000 cterm=italic,bold
hi Todo             guifg=#000000 guibg=#FFFF00 cterm=bold
