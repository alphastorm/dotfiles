" don't bother with vi compatibility
set nocompatible

"enable syntax highlighting
syntax on

"enable pathogen for plugins: https://github.com/tpope/vim-pathogen
"ctrlp: https://github.com/kien/ctrlp.vim
"endwise-vim: https://github.com/tpope/vim-endwise
"fugitive: https://github.com/tpope/vim-fugitive
"nerdcommenter: https://github.com/scrooloose/nerdcommenter
"solarized: https://github.com/altercation/vim-colors-solarized
"vim-airline: https://github.com/bling/vim-airline
"vim-autoclose: https://github.com/Townk/vim-autoclose
"vim-gitgutter: https://github.com/airblade/vim-gitgutter
"youcompleteme: https://github.com/Valloric/YouCompleteMe
execute pathogen#infect()

let mapleader = "\<Space>"

set autoindent        "copy the indent from the previous line
set autoread          "reload files when changed on disk, i.e. via git checkout
set cc=81             "highlight the 81st column
set clipboard=unnamed "add support for the Mac OS X clipboard
set directory-=.      "don't store swapfiles in the current directory
set encoding=utf-8    "utf-8 encoding
set expandtab         "insert spaces instead of tabs
set gdefault          "applies substitutions globally on lines
set hidden            "hides buffers instead of closing them
set hlsearch          "highlight all search matches
set ignorecase        "case-insensitive search
set incsearch         "search as you type
set laststatus=2      "always display the status line
set nowrap            "disable wrapping
set number            "line numbers
set ruler             "displays the current cursor position
set scrolloff=3       "2 lines at top/bottom of screen when scrolling
set showcmd           "show the input of an incomplete command
set showmatch         "jump the cursor on matching braces/parens/brackets
set smartcase         "case-sensitive search if any caps
set ttyfast           "improves redrawing
set virtualedit=all   "allow the cursor to roam beyond defined text
set visualbell        "flash the screen instead of beeping

"2 space tabs
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

"enable solarized dark and powerline symbols
set background=dark
let g:airline_powerline_fonts = 1
colorscheme solarized

"clear background for vim-gitgutter
highlight clear SignColumn

"use the silver searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  "use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  "use ag in ctrlp for listing files. lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

"turn filetype detection, indent scripts, and filetype plugins on
filetype plugin indent on

"disable arrow keys
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

"make the j and k work better with wrapped text
"if you hit j, it goes down a visual line, not a logical line
noremap j gj
noremap k gk

"highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

"change the 81st col to be gray
highlight ColorColumn ctermbg=gray

".md files are markdown
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd BufRead,BufNewFile *.md set spell

".hql files are SQL
autocmd BufRead,BufNewFile *.hql set filetype=sql

"automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =
