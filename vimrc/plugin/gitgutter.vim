let g:gitgutter_highlight_linenrs = 1

" save trigger
autocmd BufWritePost * GitGutter

" Cycle hunk
function! GitGutterNextHunkCycle()
  let line = line('.')
  silent! GitGutterNextHunk
  if line('.') == line
    1
    GitGutterNextHunk
  endif
endfunction

function! GitGutterPrevHunkCycle()
  let line = line('.')
  silent! GitGutterPrevHunk
  if line('.') == line
    $
    GitGutterPrevHunk
  endif
endfunction
    
nmap <silent> <leader>gh :call GitGutterNextHunkCycle()<CR>
nmap <silent> <leader>gH :call GitGutterPrevHunkCycle()<CR>

