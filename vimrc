"SETTINGS
set t_Co=256
set incsearch
set ignorecase 
set smartcase
set smarttab
set smartindent
set scrolloff=5
set number
set showmatch
set nocp
set shiftwidth=4
set tabstop=4
set foldmethod=indent
set foldlevel=99
filetype on 


"MAPPINGS
map <C-BS> Testing 
map <S-j> 8j
map <S-k> 8k
map <S-l> w
map <S-h> b
map j gj
map k gk
set backspace=indent,eol,start

"Undoing
map <C-z> u
imap <C-z> <ESC>ui
imap <C-r> <ESC><C-r>i

"Making/closing windows
map <silent> <C-t> :vnew<CR>
map <silent> <C-s> :w<CR>
imap <C-w> <ESC>:q<CR>

"Resizing windows 
noremap <silent> <C-h> <C-w><7
noremap <silent> <C-l> <C-w>>7

"Cycling through windows
noremap <silent> <C-w> :q<CR>
noremap <C-j> <C-w>W
noremap <C-k> <C-w>w




"STATUSBAR / AIRLINE
let g:airline#extensions#tabline#enabled = 1
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
set laststatus=2

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''



			
"TABS
"set showtabline=2               " File tabs allways visible
cabbrev help tab help

"nmap <C-j> :tabprevious<cr>
"nmap <C-k> :tabnext<cr>
"nmap <C-t> :tabnew<cr>
"
"map <C-t> :tabnew<cr>
"map <C-j> :tabprevious<cr>
"map <C-k> :tabnext<cr>
"map <C-w> :tabclose<cr>
"
"imap <C-j> <ESC>:tabprevious<cr>i
"imap <C-k> <ESC>:tabnext<cr>i
"imap <C-t> <ESC>:tabnew<cr>"



"COLOR SCHEME
colorscheme custom 
let python_highlight_all = 1



" NERD PLUGIN
" Opens NERD Tree automatically if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Maps Control-n to toggle NERD Tree
map <C-n> :NERDTreeToggle<CR>

" Quits vim of NERD Tree is only window left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Delete trailing white space on save, useful for Python and CoffeeScript
func! DeleteTrailingWS()
	  exe "normal mz"
	    %s/\s\+$//ge
		  exe "normal `z"
	  endfunc
	  autocmd BufWrite *.py :call DeleteTrailingWS()
	  autocmd BufWrite *.coffee :call DeleteTrailingWS()




 " NEOBUNDLE
 " Note: Skip initialization for vim-tiny or vim-small.
 if !1 | finish | endif

 if has('vim_starting')
   set nocompatible               " Be iMproved

   " Required:
   set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif

 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'

 " My Bundles here:
 " Refer to |:NeoBundle-examples|.
 " Note: You don't set neobundle setting in .gvimrc!

"NeoBundle 'yonchu/accelerated-smooth-scroll' 
 "NeoBundle 'Townk/vim-autoclose'
 NeoBundle 'jiangmiao/auto-pairs' 
 NeoBundle 'scrooloose/nerdtree'
 NeoBundle 'hdima/python-syntax'
 NeoBundle 'Valloric/YouCompleteMe'
"NeoBundle 'bling/vim-airline'
"NeoBundle 'scrooloose/syntastic'
 NeoBundle 'fholgado/minibufexpl.vim'
 call neobundle#end()

 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck

