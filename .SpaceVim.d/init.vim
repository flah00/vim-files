" ############## Default Setting Start ########################
"set wrap
"set guifont=JetBrainsMonoForPowerline-Regular:h20
set clipboard=unnamedplus
" gutter is transparent
set signcolumn=yes
highlight clear SignColumn
au FileType help nnoremap <buffer> <cr> <c-]>|   " Enter selects subject
au FileType help nnoremap <buffer> <bs> <c-T>|   " Backspace to go back
nmap <leader>y "+y
" ############## Default Setting End   ########################


" ############## SpaceVim Setting Start ########################
let g:NERDTreeChDirMode = 0
" basic defualt SpaceVim settings
let g:spacevim_disabled_plugins = ['neopairs.vim', 'vim-matchup']

let g:spacevim_colorscheme  = 'NeoSolarized'
let g:spacevim_project_non_root = 'current'
let g:spacevim_project_auto_root = 1
let g:spacevim_colorscheme_bg = 'light'
let g:spacevim_guifont = "SourceCodePro Nerd Font Mono:h11"
let g:spacevim_max_column   = 80
let g:spacevim_default_indent = 2
"let g:spacevim_error_symbol = '✗'
"let g:spacevim_warning_symbol =  '!'
"let g:spacevim_info_symbol =  'i'
"let g:spacevim_statusline_separator = 'arrow'
"let g:spacevim_enable_statusline_mode = 1
"let g:spacevim_buffer_index_type = 4
"let g:spacevim_windows_index_type = 1
"let g:spacevim_relativenumber = 1
let g:spacevim_lint_on_the_fly = 1
let g:spacevim_filetree_direction = 'left'
let g:spacevim_lint_on_save = 1
let g:spacevim_lint_engine = 'ale'
let g:spacevim_autocomplete_method = 'coc'

" layers settings
"call SpaceVim#layers#load('checkers')
"call SpaceVim#layers#load('colorscheme')
call SpaceVim#layers#load('fzf')
call SpaceVim#layers#load('lsp')
call SpaceVim#layers#load('shell')
"call SpaceVim#layers#load('git')
call SpaceVim#layers#load('VersionControl')
"call SpaceVim#layers#load('lang#c')
call SpaceVim#layers#load('lang#go')
call SpaceVim#layers#load('lang#javascript')
"call SpaceVim#layers#load('lang#latex')
call SpaceVim#layers#load('lang#lua')
call SpaceVim#layers#load('lang#markdown')
call SpaceVim#layers#load('lang#ruby')
call SpaceVim#layers#load('lang#rego')
call SpaceVim#layers#load('lang#terraform')
call SpaceVim#layers#load('lang#python')
"call SpaceVim#layers#load('lang#rust')
"call SpaceVim#layers#load('lang#xml')
" ############## SpaceVim Setting End  ########################

" ############## SpaceVim Layers Options Start  ########################
" layer: core 
" core settings: https://github.com/SpaceVim/SpaceVim/pull/4545#issuecomment-1003721728
call SpaceVim#layers#load('core',
    \ {
    \  'enable_smooth_scrolling' : v:false,
    \  'enable_indentline' : v:false,
    \ }
    \ )

call SpaceVim#layers#load('autocomplete',
    \ {
    \ 'auto-completion-return-key-behavior': 'complete',
		\ 'auto-completion-tab-key-behavior': 'cycle'
    \ }
    \ )

call SpaceVim#layers#load('ui',
    \ {
    \  'enable_indentline' : v:false,
    \ }
    \ )

" call SpaceVim#layers#load('checkers',
    " \ {
    " \  'lint_engine' : 'ale',
    " \ }
    " \ )

call SpaceVim#layers#load('lsp',
    \ {
    \  'filetypes' : ['go', 'ruby', 'terraform']
    \ }
    \ )

call SpaceVim#layers#load('git',
    \ {
    \  'git_plugin' : 'fugitive'
    \ }
    \ )

call SpaceVim#layers#load('lang#terraform',
    \ {
    \  'format_on_save' : v:true,
    \ }
    \ )

" layer: shell
call SpaceVim#layers#load('shell',
    \ {
    \  'default_position' : 'bottom',
    \ }
    \ )
" ############## SpaceVim Layers Options End  ########################

" ############## Embedded Plugins Setting Start ########################
let g:mkdp_path_to_chrome = 'brave-browser-stable'
let g:mkdp_auto_start = 0
let vim_markdown_preview_github=1
let vim_markdown_preview_use_xdg_open=1
" }} vim_markdown }}

" {{ Neoformat {{
" Auto format on save
"augroup fmt
"  autocmd!
"  autocmd BufWritePre * undojoin | Neoformat
"augroup END

" ############## Embedded Plugins Setting End   ########################


" ############## Extra Plugins Setting Start ########################

" ############## Extra Plugins Setting End   ########################


" ############## Custom Plugins in SpaceVim Start ########################
let g:spacevim_custom_plugins = [
    \ ['dense-analysis/ale'], 
    \ ['PascalZh/NeoSolarized'],
    \ ['towolf/vim-helm'],
    \ ['Einenlum/yaml-revealer'],
    \ ]
" ############## Custom Plugins in SpaceVim End   ########################


" ############## Custom Plugins Setting in SpaceVim Start ########################
let g:indentLine_setConceal = 0 " This is a bug: https://github.com/SpaceVim/SpaceVim/issues/4268
" let g:vim_markdown_conceal = 0
" let g:markdown_syntax_conceal = 0
" set conceallevel=2
" ############## Custom Plugins Setting in SpaceVim End  ########################
