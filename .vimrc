" CONFIGURATION DE VIM
" Par Bigg-Mike

" Annule la compatibilite avec VI.
set nocompatible

" PATHOGEN
execute pathogen#infect()

" INOREMAP
inoremap ( ()<left>
inoremap [ []<left>
inoremap ' ''<left>
inoremap " ""<left>
inoremap { {}<left>
inoremap < <><left>

" AFFICHAGE
set title
set number
set ruler
set wrap
set scrolloff=3
set hidden
set mouse=a
set cursorline
set cc=80
set textwidth=80
set tabstop=4
set shiftwidth=4
set softtabstop=4

" INDENTATION
set autoindent
set smartindent

" RECHERCHE
set ignorecase
set smartcase
set incsearch
set hlsearch
set history=200
set undolevels=200

" COMPLETION
set wildmenu
set wildmode=list:longest,list:full
set wildignore=*.o,*.r,*.so,*.sl

" ENLEVER LES BEEP
set visualbell
set noerrorbells

" COLORATION SYNTAXIQUE
syntax enable
filetype on
filetype plugin on
filetype indent on

" SOLARIZED
set background=dark
colorscheme solarized
