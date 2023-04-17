"=============================================================================
" terraform.vim --- SpaceVim lang#terraform layer
" Copyright (c) 2016-2022 Wang Shidong & Contributors
" Author: Wang Shidong < wsdjeg@outlook.com >
" URL: https://spacevim.org
" License: GPLv3
"=============================================================================

""
" @section lang#terraform, layers-lang-terraform
" @parentsection layers
" This layer is for Terraform development. It provides syntax highlighting and
" syntax checking. This layer is not loaded by default. To load this layer,
" add following snippet into SpaceVim configuration file:
" >
"   [[layers]]
"     name = 'lang#terraform'
" <
"
" @subsection Options
"
" 1. format_on_save: enable/disable code formatting when the file is saved. This
" option is disabled by default, to enable it:
" >
"   [[layers]]
"     name = 'lang#terraform'
"     format_on_save = true
" <
"
" 2. terraform_path: the REPL command for terraform 
" >
"   [[layers]]
"     name = 'lang#terraform'
"     terraform_path = '~/path/to/terraform'
" <

if exists('s:format_on_save')
  finish
else
  let s:terraform_path = 'terraform'
	let s:terraform_repl_command = ''
  let s:format_on_save = 0
  let s:lint_on_save = 0
  let s:enabled_linters = ['terraform', 'checkov', 'tfsec']
endif

function! SpaceVim#layers#lang#terraform#plugins() abort
  let plugins = []
	call add(plugins, ['hashivim/vim-terraform', { 'merged': 0, }])
  return plugins
endfunction

function! SpaceVim#layers#lang#terraform#config() abort
    let g:terraform_fmt_on_save = s:format_on_save
		let g:terraform_binary_path = s:terraform_path
    "let g:terraform_fmt_on_save=1
    "let g:terraform_binary_path='terraform'
    let g:syntastic_terraform_checkers = ['terraform', 'checkov']
    let g:syntastic_terraform_terraformlint_args='validate -no-color'
    let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['terraform'] }
		call SpaceVim#mapping#space#regesit_lang_mappings('terraform', function('s:language_specified_mappings'))
		if !empty(s:terraform_repl_command)
			call SpaceVim#plugins#repl#reg('terraform',s:terraform_repl_command)
		else
			call SpaceVim#plugins#repl#reg('terraform', 'terraform console')
		endif
    augroup spacevim_layer_lang_terraform
      autocmd!
			autocmd CmdlineEnter,BufEnter,BufNewFile *.tf silent! lcd %:p:h
    augroup END
endfunction

function! SpaceVim#layers#lang#terraform#set_variable(var) abort
  let s:terraform_repl_command = get(a:var, 'repl_command', s:terraform_repl_command) 
  let s:format_on_save = get(a:var, 'format_on_save', s:format_on_save)
  let s:terraform_path = get(a:var, 'terraform_path', s:terraform_path)
  let s:lint_on_save = get(a:var, 'lint_on_save', s:lint_on_save)
  let s:enabled_linters = get(a:var, 'enabled_linters', s:enabled_linters)
endfunction

function! s:language_specified_mappings() abort
    "nnoremap <silent><buffer> K :call SpaceVim#lsp#show_doc()<CR>
    "nnoremap <silent><buffer> gD :<C-u>call SpaceVim#lsp#go_to_typedef()<Cr>
    call SpaceVim#mapping#space#langSPC('nnoremap', ['l', 'd'], 'call SpaceVim#lsp#show_doc()', 'show-document', 1)
    call SpaceVim#mapping#space#langSPC('nnoremap', ['l', 'x'], 'call SpaceVim#lsp#references()', 'show-references', 1)
    call SpaceVim#mapping#space#langSPC('nnoremap', ['l', 'e'], 'call SpaceVim#lsp#rename()', 'rename-symbol', 1)
    call SpaceVim#mapping#space#langSPC('nnoremap', ['l', 'h'], 'call SpaceVim#lsp#show_line_diagnostics()', 'show-line-diagnostics', 1)
    let g:_spacevim_mappings_space.l.w = {'name' : '+Workspace'}
    call SpaceVim#mapping#space#langSPC('nnoremap', ['l', 'w', 'l'], 'call SpaceVim#lsp#list_workspace_folder()', 'list-workspace-folder', 1)
    call SpaceVim#mapping#space#langSPC('nnoremap', ['l', 'w', 'a'], 'call SpaceVim#lsp#add_workspace_folder()', 'add-workspace-folder', 1)
    call SpaceVim#mapping#space#langSPC('nnoremap', ['l', 'w', 'r'], 'call SpaceVim#lsp#remove_workspace_folder()', 'remove-workspace-folder', 1)
		let g:_spacevim_mappings_space.l.s = {'name' : '+Send'}
		call SpaceVim#mapping#space#langSPC('nmap', ['l','s', 'i'],
					\ 'call SpaceVim#plugins#repl#start("terraform")',
					\ 'start REPL process', 1)
		call SpaceVim#mapping#space#langSPC('nmap', ['l','s', 's'],
					\ 'call SpaceVim#plugins#repl#send("selection")',
					\ 'send selection and keep code buffer focused', 1)
endfunction

function! SpaceVim#layers#lang#terraform#health() abort
  call SpaceVim#layers#lang#terraform#plugins()
  call SpaceVim#layers#lang#terraform#config()
  return 1
endfunction
