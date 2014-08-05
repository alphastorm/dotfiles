"Enable Pathogen for plugins
"From https://github.com/tpope/vim-pathogen
execute pathogen#infect()

"Plugins
"ctrlp: https://github.com/kien/ctrlp.vim
"vim-airline: https://github.com/bling/vim-airline
"todo: need to patch fonts & make this work completely

"desert colorscheme
colorscheme desert

"enable syntax highlighting
syntax on

"turn filetype detection, indent scripts, and filetype plugins on
filetype plugin indent on

"line numbers
set number

"do not wrap
set nowrap

"This setting prevents vim from emulating the original vi's bugs and limitations
set nocompatible

"I prefer 4-space tabs to 8-space tabs. The first setting sets up 4-space tabs,
"and the second tells vi to use 4 spaces when text is indented (auto or with the
"manual indent adjustmenters.)
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

"Insert spaces instead of tabs
set expandtab

"This setting will cause the cursor to very briefly jump to a
"brace/parenthese/bracket's 'match' whenever you type a closing or opening
"brace/parenthese/bracket.
set showmatch

"This setting prevents vi from making its annoying beeps when a command doesn't
"work. Instead, it briefly flashes the screen -- much less annoying.
set vb t_vb=

"This setting ensures that each window contains a statusline that displays the
"current cursor position.
set ruler

"By default, vim doesn't let the cursor stray beyond the defined text. This
"setting allows the cursor to freely roam anywhere it likes in command mode.
set virtualedit=all

"Disable arrow keys for learning vim
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

"Settings from stevelosh.com/blog/2012/09/coming-home-to-vim/
set autoindent

"Easier split navigations
"From http://robots.thoughtbot.com/vim-splits-move-faster-and-more-naturally
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Highlight the 81st column
set cc=81
highlight ColorColumn ctermbg=4

"Always display the status line
"From http://vim.wikia.com/wiki/Displaying_status_line_always
set laststatus=2

"Highlight trailing whitespace
"From http://vim.wikia.com/wiki/Highlight_unwanted_spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
