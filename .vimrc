" Nahid Sarker

" Set 'nocompatible' to ward off unexpected things that your distro might have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Turn on line numbering
set number

" Turn on default syntax highliting
syntax on

" Make no lines longer than 80 characters
set autoindent
set textwidth=80
" On pressing tab, insert 4 spaces
set expandtab
set smartindent

" Brightness
set background=dark

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4

" Allows to switch from an unsaved buffer without saving it first.  Also allows you to keep an undo history for multiple files.  VIm will complain if you try to quit without saving, and swap files will keep you safe if computer crashes.
set hidden

" Better command-line completion
set wildmenu

" Show partial commands n the last line of the sceen
set showcmd

" Use visual bell instead of beeping when doing something wrong
set visualbell
set noerrorbells

" set show matching parenetesis
set showmatch

" ignore case when searching
set ignorecase

" ignore case if search pattern is all lowercase, case-senesetive otherwise
set smartcase

" highlight search terms
set hlsearch

" show search matches as you type
set incsearch

" remember more commands and search history
set history=1000

" use many muchos levels of undo
set undolevels=1000
