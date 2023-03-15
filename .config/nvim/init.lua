-- https://neovim.io/doc/user/lua-guide.html
require("plugins")

vim.cmd([[
  let g:coc_node_path = '/home/flah00/.nvm/versions/node/v14.21.3/bin/node'
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
  source ~/.vimrc
]])
