execute pathogen#infect()
set incsearch
set hlsearch
set cursorline
set showmatch
set wildmenu
syntax on
set mouse=a
set number
filetype plugin indent on
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let g:airline_powerline_fonts=1
set background=dark
colorscheme solarized
let g:airline_theme='bubblegum'
let g:airline#extensions#tabline#enabled = 1
map  <C-j> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-w> :tabnew<CR>
map  <C-q> :tabclose<CR>
