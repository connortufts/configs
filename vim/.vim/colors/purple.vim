" clear previous coloring
hi clear
syntax reset

" set :colorscheme name
let g:colors_name = "purple"

" line and column highlighting
hi CursorLine		cterm=NONE guifg=NONE guibg=NONE
hi CursorColumn		guifg=#000000 guibg=#FFFFFF

" line numbers on side
hi LineNr		    guifg=#FFFFFF guibg=NONE
hi CursorLineNr		guifg=#AE27FE guibg=NONE cterm=bold,underline

hi EndOfBuffer      guifg=#AE27FE guibg=NONE

" status bars at bottom of split windows
hi StatusLine		guifg=#AE27FE guibg=#000000
hi StatusLineNC		guifg=#571380 guibg=#FFFFFF
hi StatusLineTerm	guifg=#000000 guibg=#AE27FE
hi StatusLineTermNC	guifg=#000000 guibg=#571380

" color of vertical split bar
hi VertSplit		guifg=#571380 guibg=#FFFFFF

" top tab bar
hi TabLine		    guifg=#FFFFFF guibg=#571380 cterm=NONE
hi TabLineSel		guifg=#000000 guibg=#AE27FE
hi TabLineFill		guibg=#571380 cterm=NONE
hi Title            guifg=#FFFFFF

" preview menu for autocomplete
hi Pmenu            guifg=#FFFFFF guibg=#AE27FE
hi PmenuSel         guifg=#FFFFFF guibg=#571380
hi PmenuSBar        guibg=#AE27FE
hi PmenuThumb       guibg=#FFFFFF

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

" file text
hi Normal		    guifg=#FFFFFF guibg=NONE
hi Comment		    guifg=#6060FF guibg=NONE cterm=italic,bold
hi Constant		    guifg=#FFFFFF guibg=NONE cterm=bold
hi Identifier		guifg=#FFFFFF guibg=NONE
hi Statement		guifg=#CC75FF guibg=NONE
hi PreProc		    guifg=#CC75FF guibg=NONE cterm=bold,italic
hi Type			    guifg=#CC75FF guibg=NONE cterm=bold
hi Special		    guifg=#FFFFFF guibg=NONE cterm=bold

hi MatchParen		guifg=#000000 guibg=#FFFFFF cterm=bold

hi Search		    guifg=#000000 guibg=#CC75FF cterm=bold
hi IncSearch		guifg=#000000 guibg=#6060FF cterm=bold
hi Visual		    guifg=#000000 guibg=#CC75FF cterm=bold

hi Error		    guifg=#000000 guibg=#FF0000 cterm=italic,bold
hi Todo			    guifg=#000000 guibg=#FFFF00 cterm=bold
