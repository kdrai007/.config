set number
" source ~/AppData/Local/nvim/vim-plug/plugins.vim

syntax on

set tabstop=4
set smartindent

set number
set tabstop=4 softtabstop=4
set expandtab
set smartindent
set shiftwidth=4

set nowrap
set smartcase

set noswapfile
set nobackup

set nohlsearch
set hidden
set noerrorbells
set ignorecase

set termguicolors
set scrolloff=8

set signcolumn=yes
set colorcolumn=80

" leader for the keybinds
let mapleader = " "


call plug#begin()
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors

call plug#end()

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>
nmap <F8> :TagbarToggle<CR>

:colorscheme jellybeans
