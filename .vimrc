colorscheme evening

set nocompatible

if has('filetype')
    filetype indent plugin on
endif

if has('syntax')
    syntax on
endif

set hidden

set wildmenu

set showcmd

set hlsearch

set incsearch

set ignorecase
set smartcase

set backspace=indent,eol,start

set nostartofline

set ruler

set laststatus=2

set confirm

set visualbell

set t_vb=

set cmdheight=2

set number

" --------------------------------------------------------------------------------
" configure editor with tabs and nice stuff...
" --------------------------------------------------------------------------------
set expandtab           " enter spaces when tab is pressed
set textwidth=120       " break lines when line length increases
set tabstop=4           " use 4 spaces to represent tab
set softtabstop=4
set shiftwidth=4        " number of spaces to use for auto indent
set autoindent          " copy indent from current line when starting a new line

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif


" configure expanding of tabs for various file types
au BufRead,BufNewFile *.py set expandtab
au BufRead,BufNewFile *.c set expandtab
au BufRead,BufNewFile *.h set expandtab
au BufRead,BufNewFile Makefile* set noexpandtab


" make backspaces more powerfull
set backspace=indent,eol,start

set ruler                           " show line and column number
syntax on               " syntax highlighting
set showcmd             " show (partial) command in status line

set pastetoggle=<F3>

set foldmethod=indent
nnoremap <space> za
vnoremap <space> zf

" Ctrl-y 替换 Ctrl-n 
inoremap <C-Y> <C-N>  

set cursorline
