function! Meow()
    echom "Meow"
endfunction

function! GetMeow()
    return "a message"
endfunction

:augroup testgroup
:    autocmd BufWrite * :echom "Foo"
:    autocmd BufWrite * :echom "Bar"
:augroup END

:augroup testgroup
:    autocmd!
:    autocmd BufWrite * :echom "Baz"
:augroup END

