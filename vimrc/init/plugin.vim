" Vundle plugin
" be IMproved (not compatible vi), required
set nocompatible              
" disable filetype detection, required
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugin manager
Plugin 'VundleVim/Vundle.vim'

" File explorer 
Plugin 'preservim/nerdtree'

" Fast Comment
Plugin 'preservim/nerdcommenter'

" Git 
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'

" Highlight
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Faster Typing
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-surround'

" Linting
Plugin 'dense-analysis/ale'

" Faster Search
set rtp+=~/.fzf
Plugin 'junegunn/fzf.vim'

" SnipMate
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

" Support
Plugin 'tpope/vim-repeat'

call vundle#end()
filetype plugin indent on
