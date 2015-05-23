" vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'kelan/gyp.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'kien/ctrlp.vim'
Plugin 'Keithbsmiley/swift.vim'
Plugin 'vim-scripts/TwitVim'
Plugin 'kovisoft/slimv'
Plugin 'cespare/vim-toml'
Plugin 'rust-lang/rust.vim'
Plugin 'tpope/vim-fugitive'

call vundle#end()
filetype plugin indent on


" powerline
set rtp+=/Library/powerline/powerline/bindings/vim/
set laststatus=2


" neardtree
map <C-n> :NERDTreeToggle<CR>
autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


" Crtl-P
set runtimepath^=~/.vim/bundle/ctrlp.vim


" YouCompleteMe
let g:ycm_confirm_extra_conf = 0
let g:ycm_enable_diagnostic_signs = 0
set completeopt-=preview

map <C-g> :YcmCompleter GoToDefinition<CR>
map <C-d> :YcmCompleter GoToDeclaration<CR>


" syntax highlighting with solarized dark
set number
set cc=120

set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent

set history=1024
set hlsearch

syntax enable
set background=dark
colorscheme solarized

if has('gui_running')
  set anti enc=utf-8
  set guifont=Source_Code_Pro_for_Powerline:h13
endif


" set SignColumn style to the same as LineNr
highlight SignColumn ctermfg=10 ctermbg=0 guifg=Yellow


" Slimv
let g:lisp_rainbow=1

