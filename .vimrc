" plugins
let need_to_install_plugins = 0
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    "autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
    let need_to_install_plugins = 1
endif

call plug#begin()
Plug 'scrooloose/nerdtree', {'on':  'NERDTreeToggle' }
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'mitsuhiko/vim-jinja'
Plug 'ekalinin/dockerfile.vim'
Plug 'morhetz/gruvbox'

Plug 'majutsushi/tagbar'
Plug 'pangloss/vim-javascript'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/syntastic'
call plug#end()

filetype plugin indent on
syntax on

if need_to_install_plugins == 1
    echo "Installing plugins..."
    silent! PlugInstall
    echo "Done!"
    q
endif

"Common settings
set nofoldenable
set hlsearch
set incsearch

" always show the status bar
set laststatus=2

" enable 256 colors
set t_Co=256
set t_ut=

" turn on line numbering
set number

" sane text files
set fileformat=unix
set encoding=utf-8
set fileencoding=utf-8

"Colorsheme
syntax on
colorscheme gruvbox
set background=dark
let g:gruvbox_contrast_dark='hard'
filetype on
filetype plugin indent on

"Настройка табов для Python, согласно рекоммендациям
set tabstop=4
set shiftwidth=4
set softtabstop=4
set colorcolumn=80
set smarttab
set expandtab
set autoindent
"Подсветка .py syntax"
let python_highlight_all=1

" mouse
set mouse=a
let g:is_mouse_enabled = 1
noremap <silent> <Leader>m :call ToggleMouse()<CR>
function ToggleMouse()
    if g:is_mouse_enabled == 1
        echo "Mouse OFF"
        set mouse=
        let g:is_mouse_enabled = 0
    else
        echo "Mouse ON"
        set mouse=a
        let g:is_mouse_enabled = 1
    endif
endfunction

"Smarter tab line
set hidden
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>

" file browser
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let NERDTreeMinimalUI = 1
let g:nerdtree_open = 0
map <leader>n :call NERDTreeToggle()<CR>
function NERDTreeToggle()
    NERDTreeTabsToggle
    if g:nerdtree_open == 1
        let g:nerdtree_open = 0
    else
        let g:nerdtree_open = 1
        wincmd p
    endif
endfunction

" syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
map <leader>s :SyntasticCheck<CR>
map <leader>d :SyntasticReset<CR>
map <leader>e :lnext<CR>
map <leader>r :lprev<CR>

" tag list
map <C-t> :TagbarToggle<CR>

"NERDTee
map <C-n> :call NERDTreeToggle()<CR>
