set nu
syntax on
set ai
set smartindent
set ts=4
set expandtab
set sw=4
colorscheme monokai

map <F9> :! g++ % -g -o %<<cr>
map <F3> :NERDTreeToggle


set nocompatible


set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
