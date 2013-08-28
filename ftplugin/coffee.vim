setl expandtab
setl tabstop=2
setl shiftwidth=2
setl softtabstop=2

function! Cake()
  if filereadable('Cakefile')
    call system("cake compile") | cwindow | redraw!
  else
    silent CoffeeMake! -cb | cwindow | redraw!
  endif
endfunction
noremap <C-c> :call Cake()<CR>
