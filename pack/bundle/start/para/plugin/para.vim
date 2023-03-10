" Vim sanity for stupid editors
" Last Change:	2010/10/10
" Maintainer:	Philip Champon <pchampon@gmail.com>
" thanks so:
" http://stackoverflow.com/questions/1853025/make-and-ignore-lines-containing-only-whitespace
if exists("g:loaded_para")
	finish
endif
let g:loaded_para=1

let s:save_cpo = &cpo
set cpo&vim

nnoremap <silent> } :<C-U>call ParagraphMove( 1, 0, v:count)<CR>
onoremap <silent> } :<C-U>call ParagraphMove( 1, 0, v:count)<CR>
" vnoremap <silent> } :<C-U>call ParagraphMove( 1, 1)<CR>
nnoremap <silent> { :<C-U>call ParagraphMove(-1, 0, v:count)<CR>
onoremap <silent> { :<C-U>call ParagraphMove(-1, 0, v:count)<CR>
" vnoremap <silent> { :<C-U>call ParagraphMove(-1, 1)<CR>

function! ParagraphMove(delta, visual, count)
	normal m'
	normal |
	if a:visual
		normal gv
	endif
	if a:count == 0
		let limit = 1
	else
		let limit = a:count
	endif

	let i = 0
	while i < limit
		if a:delta > 0
			" first whitespace-only line following a non-whitespace character           
			let pos1 = search("\\S", "W")
			let pos2 = search("^\\s*$", "W")
			if pos1 == 0 || pos2 == 0
				let pos = search("\\%$", "W")
			endif
		elseif a:delta < 0
			" first whitespace-only line preceding a non-whitespace character           
			let pos1 = search("\\S", "bW")
			let pos2 = search("^\\s*$", "bW")
			if pos1 == 0 || pos2 == 0
				let pos = search("\\%^", "bW")
			endif
		endif
		let i += 1
	endwhile
	normal |
endfunction
