" These are 'obvious' systemd files, they're not likely to be
" confused with any other file types.
au BufRead,BufNewFile *.service set filetype=systemd
au BufRead,BufNewFile *.timer set filetype=systemd
au BufRead,BufNewFile *.mount set filetype=systemd
au BufRead,BufNewFile *.nspawn set filetype=systemd
au BufRead,BufNewFile *.target set filetype=systemd
au BufRead,BufNewFile *.socket set filetype=systemd
au BufRead,BufNewFile *.slice set filetype=systemd
au BufRead,BufNewFile *.busname set filetype=systemd

" These could possibly be other file types, so we restrict the
" matching to systemd directories.
au BufRead,BufNewFile */systemd/*.path set filetype=systemd
au BufRead,BufNewFile */systemd/*/override.conf set filetype=systemd
