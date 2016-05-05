" Vim syntax file
" Language:	    networkd
" Maintainer:	Matt Deacalion Stevens <matt@dirtymonkey.co.uk>
" Last Change:	2017-01-22

if exists('b:current_syntax')
    finish
endif

runtime! syntax/systemd.vim

syn match networkdAddress "=\zs\%(:\+/\?\|\%([0-9A-Fa-f]\+[./:]\+\)\+\)[0-9A-Fa-f]\+$" contains=networkdDelimiter
syn match networkdDelimiter "[./:]" contained

hi def link networkdAddress    Number
hi def link networkdDelimiter Operator

let b:current_syntax = 'networkd'
