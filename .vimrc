" ###### SETUP PLUGINS AND PLUGIN MANAGER ###### 
" Plugins will be downloaded under the specified directory
call plug#begin('~/.vim/plugged')

" Declare the list of plugins
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'joshdick/onedark.vim'
Plug 'itchyny/lightline.vim'
 " list ends here. Plugins become visible to Vim after this call
call plug#end()

" ###### GENERAL COMMANDS ###### 
" Shows the command (e.g. d - for delete) in the bottom right of the screen
set showcmd

" Add line numbers
set nu
set number                     " Show current line number
set relativenumber             " Show relative line numbers

" show existing tab with 2 spaces width
set tabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" On pressing tab, insert 2 spaces
set expandtab
" Same indentation on tab
set autoindent
" Keep visual selection after indenting that selection
vnoremap < <gv
vnoremap > >gv
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

" ######### Configure Line Numbers #########
" change line number color
highlight LineNr ctermfg=DarkGrey


" ######### Enable True-Color (24-bit color) #########
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

" ######### Configure lightline Status Bar #########
set laststatus=2
let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }
" ######### Enable Onedark Color Theme From Plug Package #########
syntax on
colorscheme onedark

