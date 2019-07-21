" ###### SETUP PLUGINS AND PLUGIN MANAGER ###### 
" Plugins will be downloaded under the specified directory
call plug#begin('~/.vim/plugged')

" Declare the list of plugins
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'joshdick/onedark.vim'

 " list ends here. Plugins become visible to Vim after this call
call plug#end()

" ###### GENERAL COMMANDS ###### 
" Shows the command (e.g. d - for delete) in the bottom right of the screen
set showcmd

" Turn on syntax highlighting
syntax on

" Add line numbers
set nu

" show existing tab with 2 spaces width
set tabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" On pressing tab, insert 2 spaces
set expandtab

" ###### TURN OFF PAREN MATCH HIGHLIGHTING ######   
" Disable parentheses matching depends on system. This way we should address all cases (?)
set noshowmatch
" NoMatchParen " This doesnt work as it belongs to a plugin, which is only loaded _after_ all files are.
" Trying disable MatchParen after loading all plugins
"
function! g:StopMatchParen ()
    if exists(":NoMatchParen")
        :NoMatchParen
    endif
endfunction

augroup plugin_initialize
    autocmd!
    autocmd VimEnter * call StopMatchParen()
augroup END

" ###### FILE EXPLORER CONFIGURATION (netrw) ######
" Remove the directory banner
let g:netrw_banner = 0
" Set the display style
let g:netrw_liststyle = 2
