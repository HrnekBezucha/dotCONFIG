" stop pretending to be vi
set nocompatible

" autoreload .vimrc
autocmd! bufwritepost .vimrc source %

" FINDING FILES:
" look in subdirectories and subdirectories of
"   subdirectories
set path+=**
" tab completion menu
set wildmenu

" AUTOCOMPLETE:
" documented in |ins-completion|
" ^n   - anything to 'complete'
" ^p   - anything to 'complete' in reverse
" ^x^n - just in this file
" ^x^f - files and directories
" and then ^n and ^p to scroll the list
"
" FILE BROWSING:
let g:netrw_banner=0  " disable banner
" :edit opens browser in a directory
" documented in |netrw-browse-maps|

" show commands in statusbar
set showcmd
" fancy bar
set laststatus=2

" Quicksave command
nnoremap <C-C> :update<CR>

" keep cursor in the middle-ish
set scrolloff=5
" in extreme cases:
" nnoremap j jzz
" nnoremap k kzz

" moving blocks of code
" keeps selected visual mode
vnoremap < <gv
vnoremap > >gv

" repeat command . works in visual as well
vnoremap . :normal .<CR>

" syntax highlighting
syntax on
" detect filetype and sets indent etc etc
"filetype plugin indent on

" highlight searches with /
"set hlsearch
" ignore case sensitivity
set ignorecase
" if you search Capitalized searches case sensitive
set smartcase
" incremental search = search as you type
set incsearch

" automatic indentation
set autoindent
" copy indentation of last line
set smartindent

" yank to clipboard
" doesn't work on my ver.
" some clipboards work with +
" and some with *
" set clipboard=unnamedplus

set number
set relativenumber
" colour of line numbers
highlight LineNr ctermfg=3

" line length
"set textwidth=79
set lbr " wraping lines between words
set wrap

" silence the bell
set visualbell

" longer history
set history=100
set undolevels=100

" TABS and indents
" how long is a tab
set tabstop=2
" replace tab with spaces
set expandtab
" shifting with >>
set shiftwidth=2
" Only do this part when compiled with support for autocommands.
" makefiles need proper 8 space tab char
" otherwise won't compile
if has("autocmd")
    " Use filetype detection and file-based automatic indenting.
    filetype plugin indent on
    " Use actual tab chars in Makefiles.
    autocmd FileType make set tabstop=8 shiftwidth=8 softtabstop=0 noexpandtab
endif

" demap arrow keys
" Don't be stupid
imap <Left> <Nop>
imap <Right> <Nop>
imap <Up> <Nop>
imap <Down> <Nop>
nmap <Left> <Nop>
nmap <Right> <Nop>
nmap <Up> <Nop>
nmap <Down> <Nop>
vmap <Left> <Nop>
vmap <Right> <Nop>
vmap <Up> <Nop>
vmap <Down> <Nop>

" Prevent from going to ex mode with Q
" Because what is Ex mode for again?
map <S-Q> <Nop>
" Prevent from going to recording with q
"map q <Nop>

" Press F8 to compile and run C code
map <F8> : !gcc % && ./a.out <CR>

" Automatically closing ( [ {
" use again when figured out
"   how to close them nicely
" not ' for obvious reasons
"inoremap ( ()<left>
"inoremap [ []<left>
"inoremap { {}<left>
"inoremap " ""<left>
