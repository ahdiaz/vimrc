" Not compatible with vi
set nocompatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

filetype on

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplMapWindowNavVim = 1

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on

  " Remove trailing whitespaces and ^M chars
  autocmd FileType c,cpp,java,php,js,python,rb,twig,xml,yml autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set hlsearch            " highlight search terms
"set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)
set number
set nowrap		" Don't wrap long lines
set shiftwidth=4	" use indents of 4 spaces
set tabstop=4		" an indentation every four columns
set expandtab		" tabs are spaces, not tabs
set softtabstop=4               " let backspace delete indent
"set comments=sl:/*,mb:*,elx:*/  " auto format comment blocks
set pastetoggle=<F12>           " pastetoggle (sane indentation on pastes)


" Mappings for traversing tabs
"map <C-right> :tabnext<CR>
"map <C-left> :tabprev<CR>

" Toggle line numbers and fold column for easy copying:
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

" Toggle NERD_Tree plugin on/off
map <F3> :NERDTreeToggle<CR>

" Shortcuts
" Change Working Directory to that of the current file
cmap cwd lcd %:p:h
cmap cd. lcd %:p:h

" visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv

