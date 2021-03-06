set  nocompatible               " use vim defaults

"set novisualbell               " turn off visual bell
"set nowrap
"set viminfo='20,<50,s10,h
set autoindent
set autowrite                  " Automatically save before commands like :next and :make.
set background=dark
set backspace=eol,start,indent
set encoding=utf-8
set hidden
set history=100
set hlsearch                   " Highlight search results.
set ignorecase                 " Do case insensitive matching.
set incsearch                  " Incremental search.
set modeline                   " last lines in document sets vim mode
set modelines=2                " number lines checked for modelines
set mouse=a
set nobackup                   " do not keep a backup file
set nocp
set nostartofline              " don't jump to first character when paging
set number                     " Show linenums.
set ruler
set shiftwidth=2
set shortmess=atI              " Abbreviate messages
set showcmd                    " Show (partial) command in status line.
set showmatch                  " Show matching brackets.
set smartcase                  " Do smart case matching.
set tabstop=2
set tags+=tags;/,tmp/tags
set textwidth=80
set visualbell t_vb=           " turn off error beep/flash
set whichwrap=b,s,h,l,<,>,[,]  " move freely between files
set clipboard=unnamed
set diffopt+=iwhite

syntax on

map <Leader>bg :let &background = ( &background == "dark"? "light" : "dark" )<CR>
noremap <Leader>1 :diffg REMOTE<cr>  " get from REMOTE
noremap <Leader>2 :diffg BASE<cr>  " get from BASE
noremap <Leader>3 :diffg LOCAL<cr>  " get from LOCAL
noremap <Leader>a :Ag --ignore log --ignore tmp 
noremap <Leader>b :!ctags -R --languages=ruby --exclude=.git --exclude=log .<CR>
noremap <Leader>c :!cat % \| pbcopy<CR>
noremap <Leader>g :!align.pl -ss<CR>dd
noremap <Leader>G :s/ *$//<CR>
noremap <Leader>l :TlistToggle<CR>
noremap <Leader>s :!sort<CR>
noremap <Leader>t :!ruby -rjson -e 'puts JSON.parse(File.read(ARGV[0])).to_json' % >/tmp/json.out && aws --profile prod-east cloudformation validate-template --template-body "$(cat /tmp/json.out)"<CR>
noremap <Leader>; :NERDTreeToggle<CR>
noremap <Leader>= :%s/:\([^[:space:]=]\+\)\s*=>\s*/\1: /g<CR>
inoremap <C-m> <C-x><C-o>
noremap <C-p> :tabnext<cr>
noremap <C-o> :tabprev<cr>
noremap <C-n> :tabnew<cr>
noremap <C-q> :tabclose<cr>

if has("autocmd")
  "filetype plugin on
  filetype indent plugin on

  " Restore cursor position
  au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

  " Filetypes (au = autocmd)
  au FileType help set nonumber|        " no line numbers when viewing help
  au FileType help set whichwrap=""|    " no line numbers when viewing help
  au FileType help nnoremap <buffer> <cr> <c-]>|   " Enter selects subject
  au FileType help nnoremap <buffer> <bs> <c-T>|   " Backspace to go back

  au FileType smarty,html,css map <buffer> <F3> :!tidy "%"<cr>
  au FileType jsonnet,jenkinsfile,groovy,ruby,haml,sass,html,css,coffee,dockerfile,javascript,json,java,sh,bash,sql set expandtab
  au FileType json noremap <leader>j :%!python -m json.tool<cr>:%s/    /  /g<cr>
  au FileType ruby,erb noremap <leader>r :!ruby -c %<cr>
  au FileType haml noremap <buffer> <leader>r :!haml -c %<cr>
  au FileType sass noremap <buffer> <leader>r :!sass -c %<cr>
  au FileType coffee noremap <buffer> <leader>r :CoffeeMake!<cr>
  au BufWritePost *.coffee silent CoffeeMake! | cwindow | redraw!

  autocmd FileType ruby let &l:tags = pathogen#legacyjoin(pathogen#uniq(
        \ pathogen#split(&tags) +
        \ map(split($GEM_PATH,':'),'v:val."/gems/*/tags"')))

  autocmd FileType go nmap <leader>b  <Plug>(go-build)
  autocmd FileType go nmap <leader>t  <Plug>(go-test)
endif

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
"if &term =~ "screen-" || &term =~ "xterm-"
  "set t_Co=256
"endif

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
execute pathogen#infect()

colorscheme solarized8
"let psc_style='defdark'
"colorscheme ps_color
"hi Comment ctermfg=240
"colorscheme jellybeans
set statusline=[%n]\ %<%.99f\ %h%w%m%r%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%y\ 
set statusline+=%{FugitiveStatusline()}\ 
set statusline+=%{synIDattr(synID(line('.'),col('.'),1),'name')}  " highlight
set statusline+=%b,0x%-8B                   " current char
set statusline+=%-14.(%l,%c%V%)\ %<%P        " offset

let coffee_make_options = '-b -o tmp'
let g:ctrlp_map = '<c-i>'

" go
let g:go_fmt_command = "goimports"
