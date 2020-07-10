" hotkey
" F1~12
" nerdtreeToggle <F2>
nnoremap <F4> :qa<CR>
" auto indent <F8>
nnoremap <F12> :set nu!<CR>

" tab
nnoremap <leader>t :tabe<CR>
nnoremap <S-Tab> gt<CR>

" comment
vnoremap <Tab> >>
vnoremap <S-Tab> <

" no allow to use
vnoremap <Up> <Nop>
vnoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>

nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>

inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

" normal mode
noremap <leader>= <C-[>
inoremap <leader>= <Esc>

" vim-completion
inoremap <leader>] <C-P>
inoremap <leader>[ <C-N>

" vim-auto-indent
nnoremap <F8> gg=G''

" add empty line
nnoremap <leader>[ O<Esc>
nnoremap <leader>] o<Esc>
