set nocompatible " 
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
Plugin 'tmhedberg/SimpylFold'  " collapse python code
Plugin 'vim-scripts/indentpython.vim'  " python indentation
Plugin 'vim-syntastic/syntastic'  " check syntax on save
Plugin 'nvie/vim-flake8'  " pep8 checking
Plugin 'tpope/vim-fugitive'  " git interface

" filesystem
Plugin 'scrooloose/nerdtree'  
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'  " searching using ^Ctrl + P

"auto-completion stuff
Plugin 'Valloric/YouCompleteMe'  " autocomplete
Plugin 'vim-scripts/Pydiction'

" virtualenv support
Plugin 'jmcantrell/vim-virtualenv'

" status line
" iPlugin 'vim-airline/vim-airline'
Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}  " status bar for virtualenv, git branch, etc.

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set number  " show line numbers by default
highlight LineNr ctermfg=103  " update line number color to light slate gray

" enable folding
set foldmethod=indent
set foldlevel=99

" show docstrings for folded code
let g:SimpylFold_docstring_preview=1

" PEP8 indentation for python files
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

" flag extra whitespace
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" default to UTF-8
set encoding=utf-8

" split screen settings
set splitbelow
set splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" autocomplete settings
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:pydiction_location = '~/.vim/bundle/pydiction/complete-dict'

"python with virtualenv support
let g:ycm_python_binary_path = 'python'

" make code look pretty
let python_highlight_all=1
syntax on

" ignore .pyc files in NERDTREE
let NERDTreeIgnore=['\.pyc$', '\~$']


" powerline settings
set laststatus=2  " always show
set t_Co=256  " use 256 colors

