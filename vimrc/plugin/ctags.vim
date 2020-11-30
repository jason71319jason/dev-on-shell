set tags=./tags;,./TAGS;,tags,TAGS

" Check .git/tags for ctags file
fun! FindTagsFileInGitDir(file)
    let path = fnamemodify(a:file, ':p:h')
    while path != '/'
        let fname = path . '/.git/tags'
        if filereadable(fname)
            silent! exec 'set tags+=' . fname
        endif
        let path = fnamemodify(path, ':h')
    endwhile
endfun

" Generate tags
fun! GenerateTags()
    let path = fnamemodify(expand("<afile>"), ':p:h')
    let ctags = 'tags'
    while path != '/'
        let git = path . '/.git/'
        if isdirectory(git)
            let ctags = git . ctags
            break
        endif
        let path = fnamemodify(path, ':h')
    endwhile
    silent! exec "!ctags --tag-relative=yes -R -f " . ctags . " ."
endfun

nnoremap <silent> <leader>tt :call GenerateTags()<CR>
nnoremap <silent> <F12> :TlistToggle<CR>

augroup CtagsGroup
    au!
    au BufRead * call FindTagsFileInGitDir(expand("<afile>"))
augroup END
