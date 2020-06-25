setlocal expandtab
setlocal tabstop=4
setlocal shiftwidth=4
setlocal textwidth=119

" Keep gutter so view doesn't shift with errors
" https://gist.github.com/timonv/5115411
autocmd BufEnter * sign define dummy
autocmd BufEnter * execute 'sign place 9999 line=1 name=dummy buffer=' . bufnr('')
