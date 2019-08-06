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

" ##### Configure Status Line #####
" Display file name in status line
set laststatus=2
set statusline+=%f

" change status line color on insert
" START: https://stackoverflow.com/questions/9065941/how-can-i-change-vim-status-line-color
function! InsertStatuslineColor(mode)
  if a:mode == 'i'
    hi statusline guibg=Cyan ctermfg=6 guifg=Black ctermbg=0
  elseif a:mode == 'r'
    hi statusline guibg=Purple ctermfg=5 guifg=Black ctermbg=0
  else
    hi statusline guibg=DarkRed ctermfg=1 guifg=Black ctermbg=0
  endif
endfunction

au InsertEnter * call InsertStatuslineColor(v:insertmode)
au InsertLeave * hi statusline guibg=DarkGrey ctermfg=8 guifg=White ctermbg=15

" default the statusline to green when entering Vim
hi statusline guibg=DarkGrey ctermfg=8 guifg=White ctermbg=15

" Formats the statusline
set statusline=%f                           " file name
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=\ %=                        " align left
set statusline+=Line:%l/%L[%p%%]            " line X of Y [percent of file]
set statusline+=\ Col:%c                    " current column
set statusline+=\ Buf:%n                    " Buffer number
" END: https://stackoverflow.com/questions/9065941/how-can-i-change-vim-status-line-color
