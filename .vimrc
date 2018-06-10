" autoreload .vimrc
autocmd! bufwritepost .vimrc source %

" Quicksave command
noremap <C-C> :update<CR>

" moving blocks of code
" keeps selected visual mode
" vnoremap < <gv
" vnoremap > >gv

" repeat command . works in visual as well
vnoremap . :normal .<CR>

" syntax highlighting
syntax on
" detect filetype and sets indent etc etc
"filetype plugin indent on

" cursor line highlight
"set cursorline
"highlight CursorLine cterm=bold
" light grey text on active line
"highlight CursorLine ctermfg=white

" turn on completion menu
set wildmenu

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
" doesn't work on this ver.
" set clipboard=unnamed

" line numbers
" should be working properly with vim7.4
" in 7.3.xx shows zero instead of absolute number
set number
set relativenumber
highlight LineNr ctermfg=3

"" line length
"set textwidth=79
set lbr " wraping lines between words
set wrap

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
" still works in cmd mod
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

" Preven from going to ex mode with Q
map <S-Q> <Nop>
" Prevent from going to recording with q
map q <Nop>

" Press F8 to compile and run C code
map <F8> : !gcc % && ./a.out <CR>

" Automatically closing ( [ {
" wip
" not ' for obvious reasons
"inoremap ( ()<left>
"inoremap [ []<left>
"inoremap { {}<left>
"inoremap " ""<left>

" Line below and over current
" nmap <C-o> o<Esc>O

