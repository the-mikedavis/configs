set number
set noswapfile
set smartcase

set noshowmode
set noruler
set laststatus=0
set noshowcmd

set mouse=a

set list
set listchars=trail:·

set tabstop=2
set shiftwidth=2
set expandtab
set hlsearch
set nu

autocmd FileType make setlocal noexpandtab
au BufReadPost *.world set syntax=xml
au BufReadPost *.launch set syntax=xml
