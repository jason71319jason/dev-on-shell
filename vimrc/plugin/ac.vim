if has('autocmd')
    " Move cursor to last position when reopening
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
    " Remove redundant tail space
    au BufWritePre * :%s/\s\+$//e
endif
