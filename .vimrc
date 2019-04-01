set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
call vundle#end()
filetype plugin indent on
" sensible.vim - Defaults everyone can agree on
" Maintainer:   Tim Pope <http://tpo.pe/>
" Version:      1.1
if &compatible
  finish
else
  let g:loaded_sensible = 1
endif

if has('autocmd')
  filetype plugin indent on
endif
if has('syntax') && !exists('g:syntax_on')
  syntax enable
endif

" Use :help 'option' to see the documentation for the given option.

set autoindent
set backspace=indent,eol,start
set complete-=i
set smarttab
set number

set tabstop=2
set shiftwidth=2
set softtabstop=2 
set expandtab  

set autoindent
set smartindent
set cindent

set nrformats-=octal

set ttimeout
set ttimeoutlen=100

set incsearch
" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
endif

set laststatus=2
set ruler
set showcmd
set wildmenu

if !&scrolloff
  set scrolloff=1
endif
if !&sidescrolloff
  set sidescrolloff=5
endif
set display+=lastline

if &encoding ==# 'latin1' && has('gui_running')
  set encoding=utf-8
endif

if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif

if v:version > 703 || v:version == 703 && has("patch541")
  set formatoptions+=j " Delete comment character when joining commented lines
endif

if has('path_extra')
  setglobal tags-=./tags tags^=./tags;
endif

if &shell =~# 'fish$'
  set shell=/bin/bash
endif
set autoread
set fileformats+=mac

if &history < 1000
  set history=1000
endif
if &tabpagemax < 50
  set tabpagemax=50
endif
if !empty(&viminfo)
  set viminfo^=!
endif
set sessionoptions-=options

" Allow color schemes to do bright colors without forcing bold.
if &t_Co == 8 && $TERM !~# '^linux'
  set t_Co=16
endif

" Load matchit.vim, but only if the user hasn't installed a newer version.
if !exists('g:loaded_matchit') && findfile('plugin/matchit.vim', &rtp) ==# ''
  runtime! macros/matchit.vim
endif

" Merlin 
let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"

" Set tab space for python files
au FileType python setl sw=2 sts=2 et

" Pathogen "
execute pathogen#infect()
syntax on
filetype plugin indent on

" Key to toggle NERDTree"
map <C-d> :NERDTreeToggle<CR>

" Set tabbing/untabbing "
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
inoremap <S-Tab> <C-D>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" make cocoascript javascript highlighting
augroup filetypedetect
  au BufRead,BufNewFile *.cocoascript setfiletype javascript
augroup END

" ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

" airline theme
let g:airline_powerline_fonts = 1
let g:airline_theme= 'deus'
set t_Co=256
syntax enable

set background=dark
set termguicolors
set encoding=utf8
set mouse=a

" Autoformat
noremap <a> :Autoformat<CR>

" Set highlight search
set hlsearch
" Press Space to turn off highlighting and clear any message already displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Setup copy to clipboard
set clipboard=unnamedplus

" ale
" let g:ale_sign_error = '✘'
" let g:ale_sign_warning = '⚠'
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow
let g:ale_linters = {
\'javascript': ['flow', 'eslint'],
\}
let g:ale_fixers = {
\'javascript': ['eslint'],
\}

" highlight current line
set cursorline
hi cursorline cterm=none term=none
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
hi CursorLine cterm=NONE ctermbg=240 ctermfg=NONE

" Syntax highlighting
set runtimepath+=~/.vim/bundle/swift.vim

" NERDTree
map <C-t> :NERDTreeToggle<CR>
