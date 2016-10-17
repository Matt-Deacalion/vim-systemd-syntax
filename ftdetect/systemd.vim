au BufRead,BufNewFile *.service set filetype=systemd
au BufRead,BufNewFile *.timer set filetype=systemd
au BufRead,BufNewFile */systemd/*.network set filetype=systemd
au BufRead,BufNewFile */systemd/*.netdev set filetype=systemd
au BufRead,BufNewFile */systemd/*.target set filetype=systemd
au BufRead,BufNewFile */systemd/*.slice set filetype=systemd
au BufRead,BufNewFile */systemd/*/override.conf set filetype=systemd
