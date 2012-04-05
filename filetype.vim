augroup filetypedetect
	au BufNewFile,BufRead .tmux.conf*,tmux.conf* set filetype=tmux
	au FileType tmux noremap <buffer> <Leader>a /bind\(-key\)\? \(-[cnr] \)\?["']\?\([CM]-\)\?
augroup END

