" Nahid Sarker

" Set 'nocompatible' to ward off unexpected things that your distro might have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Turn on line numbering
set number

" Turn on default syntax highliting
syntax on

" Make no lines longer than 80 characters
set textwidth=80

" apply the indentation of the current line to the next line
set autoindent

" Reacts to the syntax/style of the code for indenting
set smartindent

" On pressing tab, insert 4 spaces 
set tabstop=4

" deletes 4 spaces from tabbing
set softtabstop=-1

" the number of space characters inserted for indentation
set shiftwidth=0

" tabs become spaces
set expandtab

" Brightness
set background=dark


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

" global copy and past
set clipboard=unnamedplus

" automatic fill of paranethsis/bracket
inoremap { {<CR><BS>}<Esc>ko
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap < <><Esc>i

" adds options for paste so no tabs are added when pasting
set pastetoggle=<F3>
