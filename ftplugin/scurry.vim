if exists("b:did_ftplugin")
    finish
endif
let b:did_ftplugin = 1

let s:save_cpo = &cpo
set cpo&vim

setlocal commentstring=//%s
setlocal formatoptions-=t formatoptions+=croqnl
silent! setlocal formatoptions+=j
setlocal smartindent nocindent

setlocal suffixesadd=.rs

setlocal shiftwidth=4 softtabstop=4 expandtab
setlocal textwidth=80

let &cpo = s:save_cpo
unlet s:save_cpo

" vim: set et sw=4 sts=4 ts=8:
