let s:indicator = get(g:, 'lightline#trailing_whitespace#indicator', 'trailing')

function! lightline#trailing_whitespace#component()
  return search('\s$', 'nw') != 0 ? s:indicator : ''
endfunction
