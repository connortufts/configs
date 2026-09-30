" for truecolor xterm
set termguicolors

" filetype detection and filetype plugin load
filetype plugin on
" load syntax highlights for detected filetype
syntax on
" vim path for finding files (like includes for symbol finding)
set path=.,/usr/include,,include

" no custom buffer comments controlling editor settings
set nomodeline

" line numbers on side of window
set number
" underline line number where cursor is
set cursorline
" line numbers above and below cursor initially show relative distance
set relativenumber

" highlight all text where search matches
set hlsearch
" show text search matches while typing
set incsearch

" copy previous line indent when starting new line
set autoindent

" what keys can wrap around to other lines
set whichwrap=h,l
" do not wrap from end of file to beg of file
set nowrapscan
" long lines wrap in screen space
set wrap
" lines dont break in the middle of words
set linebreak
" characters to scroll when cursor moves off screen
set sidescroll=1
" always show lines above and below cursor when scrolling
set scrolloff=3

" column multiple to display tab char
set tabstop=4
" number of columns for one level of indent (<<, >>, ...)
set shiftwidth=4
" insert spaces instead of tab
set expandtab
" tab moves to next soft boundary instead of adding new tab
set softtabstop=4

" each window has a status line always
set laststatus=2
" custom status line
set statusline=%n\ %f%r%m%=%l/%L,\ %p%%

" autocomplete on initially
set autocomplete
" sources to display for autocomplete
set complete=.^8,t^8,w^5,b^5,u^5
" display settings for autocomplete
set completeopt=menuone,preview

" dont add 2 spaces when joining after sentence end
set nojoinspaces

" what to save when vim exits
set viminfo=!,'100,h
" what to save in a session
set sessionoptions=blank,buffers,curdir,folds,globals,help,localoptions,options,tabpages,terminal,winsize

" no folding shown initially
set nofoldenable
" default fold method to fold on indents for code
set foldmethod=indent

" diff view settings
set diffopt=algorithm:minimal,filler,inline:char,internal,vertical

" decorator characters for vim elements
set fillchars=fold:\ ,diff:\ 

" open new vert windows to the right
set splitright

function! CnextQfTop()
    let l:windowId = win_getid()
    cnext
    botright copen
    norm zt
    call win_gotoid(l:windowId)
endfunction

function! CprevQfTop()
    let l:windowId = win_getid()
    cprev
    botright copen
    norm zt
    call win_gotoid(l:windowId)
endfunction

"custom mappings
let mapleader="\<Space>"
nnoremap <leader>/ :let @/=""<CR>
nnoremap <leader>p "0p
vnoremap <leader>p "0p
nnoremap <leader>P "0P
vnoremap <leader>P "0P
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y "+yy
nnoremap <leader>r :set relativenumber!<CR>
nnoremap <leader>f :let &foldcolumn = &foldcolumn ? 0 : 6<CR>
nnoremap <leader>W :set wrap!<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>a :set autocomplete!<CR>
nnoremap <leader>v '[V']
nnoremap <leader>j :call CnextQfTop()<CR>
nnoremap <leader>k :call CprevQfTop()<CR>
nnoremap <leader>s :mks! ~/vs/last<CR>
nnoremap <leader>n *Ncgn
nnoremap <leader>t :ter<CR>
nnoremap <leader>l :20Lexplore<CR>
nnoremap <leader>m :make<CR>
nnoremap <leader>d :diffthis<CR>
nnoremap <leader>D :diffoff<CR>
nnoremap <leader>o o<ESC>
nnoremap <leader>O O<ESC>
nmap <leader>= <leader>v=
nnoremap <C-]> g<C-]>
nnoremap <C-[> <C-t>
nnoremap <C-w>] <C-w>g<C-]>
nnoremap <C-w>} <C-w>g}
nnoremap <C-w>n :vnew<CR>
inoremap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <silent><expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
nmap n nzz
nmap N Nzz
nnoremap <leader>T :silent exe '!ctags -R &' \| redraw!<CR>

" netrw settings
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_sizestyle = "H"

"tmp
autocmd FileType systemverilog setlocal textwidth=0 wrapmargin=0 formatoptions-=t

"function! MakeIfQf()
"    let l:windowInfo = getwininfo()
"    let l:windowId = win_getid()
"    for window in l:windowInfo
"        if window.quickfix
"            silent make!
"            redraw!
"            cclose
"            horizontal botright cwindow
"            resize 6
"            setlocal nonumber
"            setlocal norelativenumber
"            setlocal nowrap
"            setlocal scrolloff=0
"            norm zt
"            call win_gotoid(l:windowId)
"            break
"        endif
"    endfor
"endfunction

"augroup AutomaticMake
"    autocmd!
"    autocmd BufWritePost *.c,*.h,*.cpp,*.hpp call MakeIfQf()
"augroup END

function! QfOpenList()
    let l:windowId = win_getid()
    cclose
    horizontal botright cwindow
    if &filetype == 'qf'
        resize 6
        setlocal nonumber
        setlocal norelativenumber
        "setlocal nowrap
        setlocal scrolloff=0
        norm zt
        call win_gotoid(l:windowId)
    endif
endfunction

augroup autoqf
    autocmd!
    autocmd QuickFixCmdPost * call QfOpenList()
    autocmd Filetype qf setlocal statusline=%n\ %F%r%m%=%l/%L,\ %p%%
augroup END

" load custom colorscheme
colorscheme lavender
