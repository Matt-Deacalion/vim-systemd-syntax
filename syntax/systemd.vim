" Vim syntax file
" Language:	    systemd
" Maintainer:	Matt Deacalion Stevens <matt@dirtymonkey.co.uk>
" Last Change:	15th November, 2014

if exists("b:current_syntax")
  finish
endif

syn region systemdSection start="^\[" end="\]"
syn match  systemdLabel "^[^=]*="he=e-1
syn match  systemdComment "^#.*$"
syn region systemdQuoteSingle start=+'+ end=+'+
syn region systemdQuoteDouble start=+"+ skip=+\\\\\|\\"+ end=+"+ contains=systemdSpecial
syn match  systemdSpecial display contained "\\[\\"]"

if !exists("did_systemd_syntax")
    let did_systemd_syntax = 1
    hi def link systemdSection     Special
    hi def link systemdLabel       Identifier
    hi def link systemdComment     Comment
    hi def link systemdQuoteSingle String
    hi def link systemdQuoteDouble String
    hi def link systemdSpecial     SpecialChar
endif

let b:current_syntax = "systemd"
