set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'joshdick/onedark.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'sheerun/vim-polyglot'

call vundle#end()
filetype plugin indent on

syntax on
set encoding=utf-8
set nowrap
set number
set mouse=a

" Indent to 2 space
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" enable menu for vim command
set wildmenu
set wildmode=list:longest,full

" Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
set splitbelow splitright

" Delete search highlight by pressing enter
set hlsearch
nnoremap <silent> <cr> :noh<CR><CR>

" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o


" PLUGIN SETTINGS

" PLUGIN: NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
let NERDTreeShowHidden=1

" PLUGIN: OneDark
colorscheme onedark

" PLUGIN: Vim-Airline
let g:airline#extensions#tabline#enabled=1

