set shell=sh
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-surround'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Yggdroot/indentLine'
Plugin 'ryanoasis/vim-devicons'
Plugin 'Valloric/YouCompleteMe'
Plugin 'nvie/vim-flake8'
Plugin 'kalekundert/vim-coiled-snake'
Plugin 'vim-scripts/SyntaxRange'
Plugin 'tpope/vim-markdown'

" Start NERDTree on Vim start and focus on edit pane
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Enable powerline in Vim and set theme to solarized
syntax enable
" colorscheme 1989

set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
set encoding=UTF-8

" Always show statusline
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colors
set t_Co=256

" Vim prefs
set hlsearch
set rnu
set ruler
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
set number
set backspace=indent,eol,start

" Mappings
map ; :
map j gj
map k gk

" NERDTree prefs
let NERDTreeShowHidden=1

" GitGutter prefs
let g:gitgutter_sign_added = '++'
let g:gitgutter_sign_modified = '~~'
let g:gitgutter_sign_removed = '--'
let g:gitgutter_sign_removed_first_line = '^^'
let g:gitgutter_sign_modified_removed = 'ww'

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

let g:airline_powerline_fonts = 1
let g:airline_theme='dracula'

set listchars=eol:\

highlight Comment cterm=italic
let NERDTreeIgnore = ['\.pyc$']
autocmd BufWritePost *.py call Flake8()
let g:flake8_show_in_file=1  " show
let g:flake8_show_in_gutter=1  " show
set hlsearch
hi Search ctermfg=black
hi Folded ctermbg=white ctermfg=black
hi DiffAdd ctermfg=black
hi DiffDelete ctermfg=black
hi DiffChange ctermfg=black
hi Cursor ctermfg=black
hi SpellBad ctermfg=black
hi MatchParen ctermbg=black ctermfg=white