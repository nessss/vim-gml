if exists("b:did_ftplugin")
    finish
endif

setlocal syntax=gml
setlocal foldmethod=syntax
setlocal foldlevelstart=99
setlocal foldlevel=99
setlocal omnifunc=syntaxcomplete#Complete
setlocal fileformat=dos

let b:did_ftplugin = 1
