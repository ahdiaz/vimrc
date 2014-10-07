
" change the mapleader from \ to ,
let mapleader=","

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" ... and the Git config
nmap <silent> <leader>eg :e ~/.gitconfig<CR>

" Not compatible with vi
set nocompatible

" Ignore these files
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

" Show (partial) command in status line.
set showcmd

" Show matching brackets
set showmatch

" Do case insensitive matching
set ignorecase

" Do smart case matching
set smartcase

" Incremental search
set incsearch

" Highlight search terms
set hlsearch

" Remove the search highlight when hit enter
nnoremap <silent> <return> :nohl<CR>

" Automatically save before commands like :next and :make
"set autowrite

" Hide buffers when they are abandoned
"set hidden

" Enable mouse usage (all modes)
"set mouse=a

" Show line numbers
set number

" Toggle line numbers and fold column for easy copying:
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

" Don't wrap long lines
"set nowrap

" Wrap lines and line breaks
set nowrap
"set linebreak
"set textwidth=80

" Tabs are spaces, not tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" Use indents of 4 spaces
set shiftwidth=4

" An indentation every four columns
set tabstop=4

" Let backspace delete indent
set softtabstop=4

" Pastetoggle (sane indentation on pastes)
set pastetoggle=<F12>

" Autoindent and smart indent
set autoindent
set smartindent

" Auto format comment blocks
set comments=sl:/*,mb:*,elx:*/

" Set to auto read when a file is changed from the outside
set autoread

" Always show current position
set ruler

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac


" Vim5 and later versions support syntax highlighting.
if has("syntax")

    syntax on

    " If using a dark background within the editing area and syntax highlighting
    " turn on this option as well
    "set background=dark
endif

filetype on

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")

    filetype plugin on
    filetype indent on

    " Remove trailing whitespaces and ^M chars
    autocmd FileType c,cpp,java,php,js,python,rb,twig,xml,yml autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))

    " Uncomment the following to have Vim jump to the last position when
    " reopening a file
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

    " Change indentation if we edit Ruby code
    au BufRead,BufNewFile *.rb setlocal shiftwidth=2 tabstop=2 softtabstop=2
endif

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=l
    set guioptions-=r
    set guioptions-=L
    set guioptions-=R
    set guioptions-=T
    set guitablabel=%M\ %t
endif

"colorscheme desert
colorscheme foobar


" Mappings for traversing tabs
"map <C-right> :tabnext<CR>
"map <C-left> :tabprev<CR>

" Toggle NERD_Tree plugin on/off
map <F3> :NERDTreeToggle<CR>

" Shortcuts
" Change Working Directory to that of the current file
cmap cwd lcd %:p:h
cmap cd. lcd %:p:h

" visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv


" Buffers - explore/next/previous: Shift + ¡, ¡, '
nnoremap <silent> ¿ :BufExplorer<CR>
nnoremap <silent> ' :bp!<CR>
nnoremap <silent> ¡ :bn!<CR>


" TaskList plugin options
nnoremap <F6> :TaskList<CR>
let g:tlWindowPosition = 1
let g:tlTokenList = ['FIXME', 'TODO', 'NOTE', 'DEBUG', 'IMPORTANT', 'XXX']

