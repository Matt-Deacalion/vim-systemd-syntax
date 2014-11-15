" Vim syntax file
" Language:	    systemd
" Maintainer:	Matt Deacalion Stevens <matt@dirtymonkey.co.uk>
" Last Change:	9th July, 2013

if exists("b:current_syntax")
  finish
endif

syn region systemdSection start="^\[" end="\]"
syn match  systemdLabel "^[^=]*="he=e-1
syn match  systemdComment "^#.*$"

if !exists("did_systemd_syntax")
    let did_systemd_syntax = 1
    hi def link systemdSection Special
    hi def link systemdLabel   Identifier
    hi def link systemdComment Comment
endif

let b:current_syntax = "systemd"
