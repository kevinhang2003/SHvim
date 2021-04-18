" Some fundamental setting.
set nocompatible
filetype indent plugin on
if has('syntax')
	syntax on
endif
"---------------------------------
" Line number on the left
set relativenumber
set nu

" Search and highlight 
set nohlsearch
set incsearch
set ignorecase
set smartcase

" Allows you to re-use the save 
" window and switch from an usave 
" buffer without saving it first.
" Also allows you to keep an undo
" history for multiple files when
" re-using the same window.
set hidden

" Indentation setting
set tabstop=2 softtabstop=2
set shiftwidth=2

" For the undo tree
set nobackup
set	nowritebackup
set undodir=~/.vim/undodir
set undofile
set autoindent
set smartindent

" Others
set scrolloff=8
set signcolumn=yes
set noshowmode
set path+=**
set wildmenu
set showcmd
set backspace=indent,eol,start
set nostartofline
set showtabline=2
set nowrap
set linebreak

runtime macros/matchit.vim
call plug#begin('~/.vim/plugged')
"------- Text OBJ -------
"	Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
"--------NERDTree--------
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
"--------- FZF-----------
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
"------ Apearance -------
Plug 'gruvbox-community/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"--------- ALE ----------
Plug 'dense-analysis/ale'
"----- Highlight %  -----
Plug 'vimtaku/hl_matchit.vim'
"------- Tagbar ---------
Plug 'preservim/tagbar'
"------- Deoplete -------
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
"--------- CoC ----------
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"------- Supertab -------
Plug 'ervandew/supertab'
"------- Tabular --------
Plug 'godlygeek/tabular'
"------- Snippet --------
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
call plug#end()

augroup Systemverilog
	autocmd!
	autocmd FileType systemverilog setlocal omnifunc=syntaxcomplete#Complete
augroup END
autocmd! BufWritePost $MYVIMRC source $MYVIMRC | echom "Reloaded $NVIMRC"

nnoremap <C-x> :!chmod +x % <CR><CR>
set autoread
