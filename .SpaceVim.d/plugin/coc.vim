" {{ coc {{
inoremap <silent><expr> <c-space> coc#refresh()
let g:coc_config_home = '~/.SpaceVim.d/'
let g:coc_global_extensions = [
      \ 'coc-markdownlint',
      \ 'coc-go', 
      \ 'coc-solargraph',
      \ 'coc-sh', 
      \ ]
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your configinoremap <silent><expr> <TAB>
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "<C-h>"
" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "<C-g>u<CR><c-r>=coc#on_enter()<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "<C-f>"
nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "<c-r>=coc#float#scroll(1)<cr>" : "<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "<c-r>=coc#float#scroll(0)<cr>" : "<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "<C-b>"
endif

" Formatting selected code.
" `<leader>f` already taken by SpaceVim 
" xmap <leader>f  <Plug>(coc-format-selected)
" nmap <leader>f  <Plug>(coc-format-selected)
" }} coc }}

" {{ vim_markdown {{

call coc#config('coc.preferences', {
			\ "autoTrigger": "always",
			\ "maxCompleteItemCount": 10,
			\ "codeLens.enable": 1,
			\ "diagnostic.virtualText": 1,
			\})

"let s:coc_extensions = [
"			\ 'coc-dictionary',
"			\ 'coc-json',
"			\ 'coc-ultisnips',
"			\ 'coc-tag',
"			\]

"for extension in g:coc_global_extensions
"	call coc#add_extension(extension)
"endfor
