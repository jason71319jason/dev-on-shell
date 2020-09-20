" show
set number
set noshowmode
set cursorline

" tab and space
set softtabstop=4
set shiftwidth=4
set expandtab

" show tab
set showtabline=2
set splitbelow

" search
set hlsearch
set ignorecase
set incsearch

" Color
try
set background=dark
colorscheme gruvbox
highlight EndOfBuffer cterm=NONE ctermfg=bg ctermbg=bg
catch
endtry
syntax on

" disable sound
set visualbell
set t_vb=
