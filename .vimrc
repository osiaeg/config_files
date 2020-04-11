call plug#begin('/home/egor/.vim/plugged')
Plug 'scrooloose/nerdtree', {'on':  'NERDTreeToggle' }
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'mattn/emmet-vim'
Plug 'klen/python-mode'
Plug 'amix/vim-2048'
Plug 'mitsuhiko/vim-jinja'
Plug 'ekalinin/dockerfile.vim'
"Plug 'davidhalter/jedi-vim'

"ColorSchem
Plug 'morhetz/gruvbox'
Plug 'danilo-augusto/vim-afterglow'
call plug#end()

"colorscheme afterglow
"let g:airline_theme='afterglow'
"let g:afterglow_blackout=1
"let g:afterglow_italic_comments=1

colorscheme gruvbox
set background=dark
let g:gruvbox_contrast_dark='hard'
"Настройка табов для Python, согласно рекоммендациям
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set softtabstop=4
set autoindent
"Подсветка .py syntax"
let python_highlight_all=1

set nofoldenable

set number

set hlsearch
set incsearch
syntax on

"Mappings

map <C-n> :NERDTreeToggle<CR>

