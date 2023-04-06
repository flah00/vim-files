-- https://neovim.io/doc/user/lua-guide.html
require('plugins')

vim.cmd([[
  let g:coc_node_path = '/home/flah00/.nvm/versions/node/v14.21.3/bin/node'
  set signcolumn=yes
  " gutter is transparent
  highlight clear SignColumn
  noremap <TAB> :FZF<CR>

  nnoremap <m-h> <c-w>h
  nnoremap <m-j> <c-w>j
  nnoremap <m-k> <c-w>k
  nnoremap <m-l> <c-w>l
  if has('nvim')
    tnoremap <Esc> <C-\><C-n>
    tnoremap <C-v><Esc> <Esc>
    tnoremap <M-h> <c-\><c-n><c-w>h
    tnoremap <M-j> <c-\><c-n><c-w>j
    tnoremap <M-k> <c-\><c-n><c-w>k
    tnoremap <M-l> <c-\><c-n><c-w>l
    highlight! link TermCursor Cursor
    highlight! TermCursorNC guibg=red guifg=blue ctermbg=1 ctermfg=15
  endif

  augroup filetypedetect
    au FileType tmux noremap <buffer> <Leader>b /bind\(-key\)\? \(-[cnr] \)\?["']\?\([CM]-\)\?<CR>
    au FileType tmux noremap <buffer> <Leader>B /bind\(-key\)\? \(-[cnr] \)\?["']\?\([CM]-\)\?
  augroup END

  augroup terraform
    autocmd!
    au FileType terraform nnoremap <leader>v :!terraform-visualize %<CR>
    autocmd CmdlineEnter,BufEnter,BufNewFile *.tf silent! lcd %:p:h
  augroup end
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
  source ~/.vimrc
]])
