" This is Sunil Srivatsa's .vimrc file

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PATHOGEN
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
execute pathogen#infect()

" ack.vim: https://github.com/mileszs/ack.vim.git
" ale: https://github.com/w0rp/ale
" cpsm: https://github.com/nixprime/cpsm
" ctrlp: https://github.com/ctrlpvim/ctrlp.vim
" delimitMate: https://github.com/Raimondi/delimitMate.git
" endwise-vim: https://github.com/tpope/vim-endwise
" fugitive: https://github.com/tpope/vim-fugitive
" indentLine: https://github.com/Yggdroot/indentLine
" javascript-libraries-syntax: https://github.com/othree/javascript-libraries-syntax.vim
" nerdcommenter: https://github.com/scrooloose/nerdcommenter
" nerdtree-git-plugin: https://github.com/Xuyuanp/nerdtree-git-plugin
" nerdtree: https://github.com/scrooloose/nerdtree
" promptline: https://github.com/edkolev/promptline.vim
" solarized: https://github.com/altercation/vim-colors-solarized
" vim-airline-themes: https://github.com/vim-airline/vim-airline-themes
" vim-airline: https://github.com/bling/vim-airline
" vim-dispatch: https://github.com/tpope/vim-dispatch
" vim-gitgutter: https://github.com/airblade/vim-gitgutter
" vim-go: https://github.com/fatih/vim-go.git
" vim-javascript-syntax: https://github.com/jelera/vim-javascript-syntax
" vim-javascript: https://github.com/pangloss/vim-javascript.git
" vim-json: https://github.com/elzr/vim-json.git
" vim-markdown: https://github.com/plasticboy/vim-markdown
" vim-quickrun: https://github.com/thinca/vim-quickrun
" youcompleteme: https://github.com/Valloric/YouCompleteMe

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" BASIC EDITING CONFIGURATION
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible

" enable syntax highlighting
syntax on

" turn filetype detection, indent scripts, and filetype plugins on
filetype plugin indent on

" 2 space tabs
set tabstop=2
set shiftwidth=2
set softtabstop=2

" prevent vim from clobbering the scrollback buffer
" http://www.shallowsky.com/linux/noaltscreen.html
set t_ti= t_te=

" toggle paste for pasting unmodified text
" http://vim.wikia.com/wiki/Toggle_auto-indenting_for_code_paste
set pastetoggle=<F6>

" delete comment character when joining commented lines
" https://github.com/tpope/vim-sensible/blob/master/plugin/sensible.vim
if v:version > 703 || v:version == 703 && has("patch541")
  set formatoptions+=j
endif

set autoindent        " copy the indent from the previous line
set autoread          " reload files when changed on disk, i.e. via git checkout
set cc=81             " highlight the 81st column
set clipboard=unnamed " add support for the Mac OS X clipboard
set directory-=.      " don't store swapfiles in the current directory
set encoding=utf-8    " utf-8 encoding
set expandtab         " insert spaces instead of tabs
set gdefault          " applies substitutions globally on lines
set hidden            " hides buffers instead of closing them
set hlsearch          " highlight all search matches
set ignorecase        " case-insensitive search
set incsearch         " search as you type
set laststatus=2      " always display the status line
set lazyredraw        " enable lazy redrawing
set nowrap            " disable wrapping
set number            " line numbers
set ruler             " displays the current cursor position
set scrolloff=3       " 2 lines at top/bottom of screen when scrolling
set showcmd           " show the input of an incomplete command
set showmatch         " jump the cursor on matching braces/parens/brackets
set smartcase         " case-sensitive search if any caps
set ttyfast           " improves redrawing
set virtualedit=all   " allow the cursor to roam beyond defined text
set visualbell        " flash the screen instead of beeping

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" COLOR
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set background=dark
colorscheme solarized

" highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" change the 81st col to be gray
highlight ColorColumn ctermbg=gray

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" KEY MAPPINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = "\<Space>"
nnoremap <leader><leader> <C-^>
nnoremap <Leader>a :Ack<CR>
nnoremap <leader>b :Gblame<CR>
nnoremap <leader>e :lnext<CR>
nnoremap <leader>h :noh<CR>
nnoremap <leader>r :QuickRun<CR>
nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <leader>w <C-w>v<C-w>l:CtrlP<CR>

" disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" get rid of the help key
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" easier split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" make the j and k work better with wrapped text
" if you hit j, it goes down a visual line, not a logical line
noremap j gj
noremap k gk

" toggle [i]nvisible characters
nmap <leader>i :set list!<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PLUGIN SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_powerline_fonts = 1

" enable background search execution with vim-dispatch for ack.vim
let g:ack_use_dispatch = 1

" set javascript-libraries-syntax used libraries
let g:used_javascript_libs = 'flux,react,underscore'

" ale settings
let g:ale_linters = {
      \   'python': [],
      \}
let g:ale_statusline_format = ['%d ✗', '%d ⚠', '']
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_open_list = 1

function ALE() abort
  return exists('*ALEGetStatusLine') ? ALEGetStatusLine() : ''
endfunction
let g:airline_section_error = '%{ALE()}'
let g:airline_section_warning = ''
let g:airline_skip_empty_sections = 1

let g:indentLine_char = '¦'

" disable concealing of double quotes
let g:vim_json_syntax_conceal = 0

" disable conealing and folding with markdown
let g:vim_markdown_conceal = 0
let g:vim_markdown_folding_disabled = 1

let g:promptline_preset = {
  \'a' : [ promptline#slices#cwd({ 'dir_limit': 2 }) ],
  \'b' : [ promptline#slices#vcs_branch(), '$(git rev-parse --short HEAD 2>/dev/null)' ],
  \'c' : [ promptline#slices#python_virtualenv(), '$GOENV' ],
  \'x' : [ '$(date +"%H:%M:%S")' ],
  \'warn' : [ promptline#slices#last_exit_code() ]}

" close the ycm preview window after insertion or completion
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1

" clear background for vim-gitgutter
highlight clear SignColumn

" use the silver searcher: https://github.com/ggreer/the_silver_searcher
if executable('ag')
  "use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " for using ag with ack.vim
  let g:ackprg = 'ag --vimgrep'

  " use ag in ctrlp for listing files. lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --ignore ''.git'' --ignore ''.DS_Store'' --ignore ''node_modules'' --hidden -g ""'

  " ag is fast enough that we don't need to cache
  let g:ctrlp_use_caching = 0
endif

" use cpsm, a CtrlP matcher, specialized for paths
let g:ctrlp_match_func = {'match': 'cpsm#CtrlPMatch'}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CUSTOM AUTOCMDS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup vimrcEx
  " clear all autocmds in the group
  autocmd!

  " jump to last cursor position unless it's invalid, in an event handler, or a
  " git commit message
  autocmd BufReadPost *
    \ if &filetype !~ '^git\c' && line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

  " disable colorcolumn for golang
  autocmd BufRead *.go setl cc=0

  " .hql files are SQL
  autocmd BufRead,BufNewFile *.hql set filetype=sql

  " automatically rebalance windows on vim resize
  autocmd VimResized * :wincmd =

  " close the quickfix / location list if it is the last window open
  autocmd WinEnter * if &buftype ==# 'quickfix' && winnr('$') == 1 | quit | endif

  " prefer 2 space indent for python over PEP8: disabled for uber
  " autocmd FileType python setl tabstop=2 shiftwidth=2 softtabstop=2
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" STRIP TRAILING WHITESPACE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! <SID>StripTrailingWhitespaces()
  " preparation: save last search, and cursor position
  let _s=@/
  let l = line(".")
  let c = col(".")
  " do the business
  %s/\s\+$//e
  " clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction
nnoremap <silent> <F5> :call <SID>StripTrailingWhitespaces()<CR>
