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

" vim-auto-indent
nnoremap <F8> gg=G''

" normal mode
imap jj <C-[>

" add empty line
nnoremap iO O<Esc>
nnoremap io o<Esc>
