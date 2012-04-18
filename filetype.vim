augroup filetypedetect
	au BufNewFile,BufRead *.eco set filetype=eco
	au BufNewFile,BufRead *.coffee set filetype=coffee
	au BufNewFile,BufRead .tmux.conf*,tmux.conf* set filetype=tmux
	au FileType tmux noremap <buffer> <Leader>a /bind\(-key\)\? \(-[cnr] \)\?["']\?\([CM]-\)\?
augroup END

