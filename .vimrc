" SETUP Plug
" Plugins will be downloaded under the specified directory
call plug#begin('~/.vim/plugged')

" Declare the list of plugins
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'joshdick/onedark.vim'

" list ends here. Plugins become visible to Vim after this call
call plug#end()

" Shows the command (e.g. d - for delete) in the bottom right of the screen
set showcmd

" Turn on syntax highlighting
syntax on

" Add line numbers
set nu

" I don't know what this does
filetype plugin indent on

" show existing tab with 2 spaces width
set tabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" On pressing tab, insert 2 spaces
set expandtab

