" Nahid Sarker

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" Plugins
" Plugin 'sjl/badwolf'    " Colorscheme

Plugin 'ctrlpvim/ctrlp.vim' " Fuzzy file and buffer finder
" :CtrlP to invoke find file mode
" :CtrlBuffer or :CtrlPMRU to find buffer in MRU file mode
" :CtrlPMixed to search in file, Buffers and MRU files at the same time

Plugin 'itchyny/lightline.vim' " Colorful status bar
" Plugin 'tomtom/tcomment_vim'    " Syntax-aware plugin for easy commenting
" Plugin 'Valloric/YouCompleteMe' " Auto complete
" Plugin 'airblade/vim-gitgutter' "Shows git icons ( + for line addition, ~ for modification, - for removal
Plugin 'scrooloose/syntastic'   " syntax checking
" Plugin 'nathanaelkane/vim-indent-guides'    " Shows indents

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" For Syntastic
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_c_checkers = ['cppcheck']
let g:syntastic_cpp_checkers = ['cppcheck']

" for lightline plugin
set laststatus=2    
if !has('gui_running')
      set t_Co=256
  endif

" Set 'nocompatible' to ward off unexpected things that your distro might have made, as well as sanely reset options when re-sourcing .vimrc
" set nocompatible

" Turn on line numbering
set number

" Turn on default syntax highliting
syntax on
colorscheme elflord

" Make no lines longer than 80 characters
" set textwidth=80

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
" set wildmenu

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

" Automatically wrap left and right
set whichwrap+=<,>,h,l,[,]

" Set spell checking
" set spell spelllang=en_us

" automatic fill of paranethsis/bracket
" inoremap { {<CR><BS>}<Esc>ko
" inoremap ( ()<Esc>i
" inoremap [ []<Esc>i
" inoremap < <><Esc>i

" fix indention on entire file
map <F9> mzgg=G`z

" adds options for paste so no tabs are added when pasting
set pastetoggle=<F3>

" removes tabs with 4 while space on entire file
map <F4> :1,$s/\t/    /g

" enable mouse (can click on places in the page)
map <F5> :set mouse=a
" set:mouse=    to disable

" split with vsplit (vertical) split (horizontal) vsplit [file], Ctrl-W to swap

" to comment out multiple lines Ctrl-V, Shift-I, # or //, and Esc

" Save as sudo
map <F1> :w !sudo tee %

" Space to tab
map <F2> :set noexpandtab

" Hide tmux statusbar when starting vim in a tmux session
" autocmd VimEnter,VimLeave * silent !tmux set status
