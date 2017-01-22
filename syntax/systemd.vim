" Vim syntax file
" Language:	    systemd
" Maintainer:	Matt Deacalion Stevens <matt@dirtymonkey.co.uk>
" Last Change:	2017-01-22

if exists('b:current_syntax')
    finish
endif

syn region systemdSection start="^\[" end="\]"
syn match  systemdLabel "^[A-Za-z0-9]\+\ze="
syn match  systemdComment "^[#;].*$"
syn region systemdQuoteSingle start="'" end="'"
syn region systemdQuoteDouble start='"' skip='\\\\\|\\"' end='"' contains=systemdSpecial
syn match  systemdSpecial display contained '\\[\\"]'

hi def link systemdSection     Special
hi def link systemdLabel       Identifier
hi def link systemdComment     Comment
hi def link systemdQuoteSingle String
hi def link systemdQuoteDouble String
hi def link systemdSpecial     SpecialChar

let b:current_syntax = 'systemd'
