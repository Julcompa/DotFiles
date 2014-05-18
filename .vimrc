" vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'
Plugin 'kelan/gyp.vim'

call vundle#end()
filetype plugin indent on


" powerline
set rtp+=/Library/powerline/powerline/bindings/vim/
set laststatus=2


" neardtree
map <C-n> :NERDTreeToggle<CR>
autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


" YouCompleteMe
let g:ycm_confirm_extra_conf = 0

set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0

let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>>'

map <C-g> :YcmCompleter GoToDefinition<CR>
map <C-d> :YcmCompleter GoToDeclaration<CR>


" syntax highlighting with solarized dark
set number
set cc=80

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

