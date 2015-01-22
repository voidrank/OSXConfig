set nu
syntax on
set ai
set smartindent
set ts=4
set expandtab
set sw=4
colorscheme monokai
set term=xterm-256color

map <F9> :! g++ % -g -o %<<cr>

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" NERDTree
Plugin 'the-nerd-tree'
map <F4> :NERDTree<cr>
map <F3> :NERDTreeToggle<cr>
" auto complete
Plugin 'neocomplcache' 

Bundle 'klen/python-mode'

" pymode-folder
let g:pymode_folding = 0
" pymode jump-to-definition
let g:pymode_rope_goto_definition_bind = '<C-c>g'
let g:pymode_rope_goto_definition_cmd = 'new'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
" Comnent
if has("gui_running")
    "colorscheme default        " It doesn't matter whether you comment this or not
    :
else
    colorscheme desert         " I'd like to use modified desert scheme instead 
                                    " of the default one, in the CLI mode of
                                    " course;-)
endif
