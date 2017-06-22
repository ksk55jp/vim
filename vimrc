silent! call pathogen#runtime_append_all_bundles()

execute pathogen#infect()
set nowrap
set number
set expandtab "タブ入力を複数の空白入力に置き換える
set tabstop=2 "画面上でタブ文字が占める幅
set shiftwidth=2 "自動インデントでずれる幅
set softtabstop=2 "連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
"set autoindent "改行時に前の行のインデントを継続する
set smartindent "改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set incsearch
syntax enable
filetype plugin indent on
set autochdir
set showcmd
set showmode
set hidden
set wildmenu
set wildmode=list:longest
