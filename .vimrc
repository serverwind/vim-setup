set nocompatible
filetype on
filetype plugin on
filetype indent on
set number
set cursorline
set tabstop=4
set shiftwidth=4
set autoindent
set expandtab
set spell " spellchecking
set shortmess-=S
set scrolloff=10
set incsearch
set showcmd
set showmode
set hlsearch
set mouse=a
set wrap
set linebreak
set wildmenu
set t_Co=8
set term=xterm-256color
let g:rehash256 = 1
syntax on
set timeoutlen=1000
set laststatus=2 " for lightline.vim plug
au FocusLost * :wa " for autosave on focus lost
set completeopt+=menuone,noselect " for vim-mucomplete plugin

call plug#begin()

Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
Plug 'tomasiser/vim-code-dark'
Plug 'pangloss/vim-javascript' " for js
Plug 'lifepillar/vim-mucomplete'
Plug 'w0rp/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'alvan/vim-closetag'
Plug 'psliwka/vim-smoothie'

call plug#end()

set background=dark
if exists('+termguicolors')
      let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
      let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
      set termguicolors
    endif
colorscheme spaceduck
let g:user_emmet_leader_key = '<C-S>'
nnoremap <C-f> :NERDTreeToggle<CR>
let g:lightline = {
          \ 'colorscheme': 'spaceduck',
          \ }
hi Function cterm=bold
hi Comment cterm=italic, guibg=#000000
hi Tag guibg=#000000
hi String cterm=italic
hi Keyword cterm=bold
hi javaScriptValue cterm=bold
hi javaScriptParens guifg=blue
" Enable Omnicomplete features

"macros
let @f ="vEydEi<span class='formula-n'>\<Esc>p"
let @a = "veydei<abbr title=''>\<Esc>p"
let @i = "vEydEi<i>\<Esc>p"
let @n = ":!/usr/bin/node %" " run js in node
