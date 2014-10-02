"enable pathogen for plugins: https://github.com/tpope/vim-pathogen
"ctrlp: https://github.com/kien/ctrlp.vim
"fugitive: https://github.com/tpope/vim-fugitive
"solarized: https://github.com/altercation/vim-colors-solarized
"vim-airline: https://github.com/bling/vim-airline
execute pathogen#infect()

set autoindent      "copy the indent from the previous line
set cc=81           "highlight the 81st column
set expandtab       "insert spaces instead of tabs
set encoding=utf-8  "utf-8 encoding
set laststatus=2    "always display the status line
set nocompatible    "get rid of crap to be compatible with vi
set nowrap          "disable wrapping
set number          "line numbers
set ruler           "displays the current cursor position
set scrolloff=3     "2 lines at top/bottom of screen when scrolling
set showmatch       "jump the cursor on matching braces/parens/brackets
set ttyfast         "improves redrawing
set virtualedit=all "allow the cursor to roam beyond defined text
set visualbell      "flash the screen instead of beeping

"4 space tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

"enable syntax highlighting
syntax on

"enable solarized dark and powerline symbols
set background=dark
let g:solarized_termcolors=16
let g:airline_powerline_fonts = 1
colorscheme solarized

"turn filetype detection, indent scripts, and filetype plugins on
filetype plugin indent on

"disable arrow keys for learning vim
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

"get rid of the help key
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

"easier split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

"change the 81st col to be light blue
highlight ColorColumn ctermbg=4
