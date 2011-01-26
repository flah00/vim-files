" my vim file
set nocompatible	" use vim defaults

" 256 colors!
set t_Co=256
set autoindent
set autowrite		" Automatically save before commands like :next and :make.
set backspace=eol,start,indent
set nobackup		" do not keep a backup file
set nocp
set encoding=utf-8
set hidden
set history=100
set hlsearch		" Highlight search results.
set ignorecase	" Do case insensitive matching.
set incsearch		" Incremental search.
set modeline		" last lines in document sets vim mode
set modelines=2	 " number lines checked for modelines
"set mouse=a
"set nowrap
"set number			" Show linenums.
set ruler
set shiftwidth=2
set shortmess=atI   " Abbreviate messages
set showcmd			" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set smartcase		" Do smart case matching.
set nostartofline   " don't jump to first character when paging
set tabstop=2
set tags+=tags;/,tmp/tags
"set viminfo='20,<50,s10,h
set visualbell t_vb=	" turn off error beep/flash
"set novisualbell	" turn off visual bell
set whichwrap=b,s,h,l,<,>,[,]   " move freely between files

syntax on
colorscheme jellyx

noremap <unique> <Leader>h :TOhtml<CR>:1<CR>/body<CR>:1,-1d<CR>nc$pre style="font-family: monospace; color: #ffffff; background-color: #000000; overflow: auto; height: 20em;"><CR><code><ESC>/\/body:,$d<CR>:w! /tmp/buffer.txt<CR>
noremap <unique> <Leader>l :TlistToggle<CR>
noremap <unique> <Leader>; :NERDTreeToggle<CR>
inoremap <C-m> <C-x><C-o>
"inoremap <expr> <cr> pumvisible()? "\<c-y>":"\<c-g>u\<cr>"
"inoremap <expr> j   pumvisible()?"\<C-N>":"j"
"inoremap <expr> k   pumvisible()?"\<C-P>":"k"
"noremap <C-w>l <C-w>2<C-w>
"noremap <C-w>b <C-w>1<C-w>
noremap <C-S-p> :tabnext<cr>
noremap <C-S-o> :tabprev<cr>
noremap <C-S-n> :tabnew<cr>

if has("autocmd")
	"filetype plugin on
	filetype indent plugin on

	" Restore cursor position
	au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

	" Filetypes (au = autocmd)
	au FileType help set nonumber|	  " no line numbers when viewing help
	au FileType help set whichwrap=""|	  " no line numbers when viewing help
	au FileType help nnoremap <buffer> <cr> <c-]>|   " Enter selects subject
	au FileType help nnoremap <buffer> <bs> <c-T>|   " Backspace to go back

	au FileType smarty,html,css map <buffer> <F3> :!tidy "%"<cr>
endif

if $VIM_CRONTAB == 'true'
	set nobackup
	set nowritebackup
endif

" Ruby goodies 
let g:rubycomplete_buffer_loading = 1 
let g:rubycomplete_classes_in_global = 1 
let g:rubycomplete_include_object = 1
let g:rubycomplete_include_objectspace = 1
let g:rubycomplete_rails = 1
"map <leader>mr <ESC>:rubyf %<CR> 

" some :TOHtml fun
" let g:html_use_css = 0
" let g:html_use_xhtml = 1
" let g:html_ignore_folding = 1
" let g:html_dynamic_folds = 1
let g:html_number_lines = 0

" pathogen settings
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
