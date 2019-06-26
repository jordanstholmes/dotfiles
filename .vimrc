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

" Turn off paren match highlighting
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
