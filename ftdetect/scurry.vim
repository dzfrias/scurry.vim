autocmd BufRead,BufNewFile *.scy call s:set_scurry_filetype()

function! s:set_scurry_filetype() abort
    if &filetype !=# 'scurry'
        set filetype=scurry
    endif
endfunction

" vim: set et sw=4 sts=4 ts=8:
