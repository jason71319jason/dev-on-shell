fun! AddCScopeFromCSDB()
    let path = fnamemodify(expand("<afile>"), ':p:h')
    let csc = 'cscope.out'
    while path != '/'
        let csdb = path . '/csdb/'
        if isdirectory(csdb)
            let csc = csdb . csc
            break
        endif
        let path = fnamemodify(path, ':h')
    endwhile
    silent! exec 'cs add ' . csc
endfun

if has("cscope")
    set cscopetag
    set csto=0

    call AddCScopeFromCSDB()
    set cscopeverbose

    nmap zs :cs find s <C-R>=expand("<cword>")<CR><CR>
    nmap zg :cs find g <C-R>=expand("<cword>")<CR><CR>
    nmap zc :cs find c <C-R>=expand("<cword>")<CR><CR>
    nmap zt :cs find t <C-R>=expand("<cword>")<CR><CR>
    nmap ze :cs find e <C-R>=expand("<cword>")<CR><CR>
    nmap zf :cs find f <C-R>=expand("<cfile>")<CR><CR>
    nmap zi :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap zd :cs find d <C-R>=expand("<cword>")<CR><CR>
endif
