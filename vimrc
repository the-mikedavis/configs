set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Lokaltog/vim-distinguished'
Plugin 'keith/swift.vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'sjl/badwolf'
"Plugin 'pangloss/vim-javascript'
"Plugin 'nathanaelkane/vim-indent-guides'
call vundle#end()
filetype plugin indent on

set t_Co=256
set background=dark
let g:solarized_termcolors = 256
let g:solarized_termtrans = 1
"colorscheme distinguished
"colorscheme solarized
colorscheme badwolf

"   Clear highlighting on escape in normal mode
nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[
"   Switch to spaces of width 4
set tabstop=4
set shiftwidth=4
set expandtab
set hlsearch
set nu "show line numbers
"   Show the column and such
set ruler
syntax on

"   For makefiles, turn tabs back on
autocmd FileType make setlocal noexpandtab

"   Get aliases from bash_profile
let $BASH_ENV = "~/.bash_profile"
