let s:myvimdir ="~/.vim"
" use Vim settings over obsolescent Vi settings
set nocompatible

" enables filetype detection, ftplugins, and indent files
filetype plugin indent on

" }}}
" ===========================================================================
" VIM-PLUG {{{
" ===========================================================================
" (minimalist plugin manager)

" Install Vim-Plug at startup if it isn't installed {{{
if !filereadable(expand(s:myvimdir . "/autoload/plug.vim"))
  echo "Installing Vim-Plug and plugins,"
  echo "restart Vim to finish installation."
  silent! call mkdir(expand(s:myvimdir . "/autoload"), 'p')
  silent! execute "!curl -fLo ".expand(s:myvimdir . "/autoload/plug.vim")
        \ ." https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  au VimEnter * PlugInstall
endif

call plug#begin()


" PLUGINS
Plug 'flazz/vim-colorschemes'       " all the colorschemes
Plug 'bling/vim-airline'            " better statusbar
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-Startify'           " nice startup screen
Plug 'Yggdroot/indentLine'          " shows indents made of spaces
Plug 'junegunn/vim-easy-align'      " text alignment plugin
Plug 'chrisbra/unicode.vim'
Plug 'edkolev/tmuxline.vim'
Plug 'jeetsukumaran/vim-filebeagle' " vinegar inspired file manager
Plug 'scrooloose/Syntastic'         " real time error checking
Plug 'terryma/vim-multiple-cursors' " Sublime multi-cursors for Vim
Plug 'ctrlpvim/ctrlp.vim'           " fuzzy file/buffer search
Plug 'ervandew/supertab'            " tab auto completion
Plug 'tpope/vim-sensible'
Plug 'altercation/vim-colors-solarized'
Plug 'majutsushi/tagbar'
Plug 'audibleblink/hackthebox.vim'
call plug#end()

let g:SuperTabDefaultCompletionType = "context"

set incsearch
set hlsearch
set cursorline
set showmatch
set wildmenu
syntax on
set mouse=a
set number
filetype plugin indent on
let g:airline_powerline_fonts=1
let g:hybrid_custom_term_colors = 1
set background=dark
let g:filebeagle_show_hidden = 1
let g:airline_theme='bubblegum'
let g:airline#extensions#tabline#enabled = 1
map  <C-j> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>
map  <C-q> :tabclose<CR>
map  <C-t> :vsplit<CR>
autocmd FileType python nnoremap <buffer> <C-b> :w \| exec '!clear; python3' shellescape(@%, 1)<cr>
nnoremap <C-w> <C-w><C-w>
nmap <F8> :TagbarToggle<CR>
let g:indentLine_enabled = 1

" The shift error
cabbr w1 w
cabbr W w
cabbr Q q
