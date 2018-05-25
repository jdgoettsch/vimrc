" my filetype file
if exists("did_load_filetype")
    finish
endif
augroup filetypedetect
    au! BufRead,BufNewFile *.dhtml	setfiletype htmldjango
    au! BufRead,BufNewFile *.txt	setfiletype text
augroup END

augroup vagrant
    au! BufRead,BufNewFile Vagrantfile	setfiletype ruby
augroup END
