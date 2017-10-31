function! s:lightline_trailing_whitespace_refresh()
  if get(b:, 'lightline_trailing_whitespace_changedtick', 0) == b:changedtick
    return
  endif
  unlet! b:lightline_trailing_whitespace_changedtick
  call lightline#update()
  let b:lightline_trailing_whitespace_changedtick = b:changedtick
endfunction

augroup lightline#trailing_whitespace
  autocmd!
  autocmd CursorHold,BufWritePost * call s:lightline_trailing_whitespace_refresh()
augroup END
