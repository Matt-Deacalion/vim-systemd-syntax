if exists('b:did_ftplugin')
    finish
endif
let b:did_ftplugin = 1

let s:cpoptions_save = &cpoptions
set cpoptions&vim

setlocal commentstring=#%s comments=:#,:;
setlocal formatoptions-=t formatoptions+=croqnl
" j was only added in 7.3.541, so stop complaints about its nonexistence
silent! setlocal formatoptions+=j

let b:undo_ftplugin = 'setlocal commentstring< comments<'

let &cpoptions = s:cpoptions_save
unlet s:cpoptions_save
