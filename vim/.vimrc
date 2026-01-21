" for truecolor xterm
set termguicolors
filetype plugin on
syntax on

set cursorline
"set cursorcolumn

set number
set hlsearch
set incsearch
" to clear current search
nnoremap <leader>h :let @/=""<CR>

" auto indent from previous line
set ai

set nomodeline

set whichwrap=b,s,h,l,[,],<,>,~
set sidescroll=1

set laststatus=2

set statusline=%F%r%m%=%l/%L,\ %p%%

set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4

colorscheme purple

"highlight mbComment ctermfg=41
"highlight mbCommand ctermfg=173
"highlight mbNumber ctermfg=39
"highlight mbIns ctermfg=176

"highlight cvmComment ctermfg=41
"highlight cvmCommand ctermfg=173
"highlight cvmNumber ctermfg=39
"highlight cvmIns ctermfg=176
