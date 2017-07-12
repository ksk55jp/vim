silent! call pathogen#runtime_append_all_bundles()

execute pathogen#infect()
set nowrap
set number relativenumber
set incsearch
syntax enable
set autochdir
set showcmd
set showmode
set hidden
set wildmenu
set wildmode=list:longest
" Only for idiomatic ruby time
nmap <Leader>r :! clear; ruby % <CR>
" Ragtag enabling?
let g:ragtag_global_maps = 1
inoremap <M-o>       <Esc>o
inoremap <C-j>       <Down>
set nrformats =
" ================ Indentation ======================

set autoindent
set smartindent "改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set smarttab
set shiftwidth=2 "自動インデントでずれる幅
set softtabstop=2 "連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set tabstop=2 "画面上でタブ文字が占める幅
set expandtab "タブ入力を複数の空白入力に置き換える

"===============
set nocompatible
filetype plugin on
filetype indent on

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'
" Initialize plugin system
call plug#end()
"===== Resume the editting position from previous close...
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
set ruler
