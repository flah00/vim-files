local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use 'neovim/nvim-lspconfig'
  use 'altercation/vim-colors-solarized'
  use 'junegunn/fzf'
  use 'vim-test/vim-test'
  -- use 'neomake/neomake'
  use 'mhinz/vim-grepper'
  use 'scrooloose/nerdtree'
  use 'scrooloose/nerdcommenter'
  use 'jiangmiao/auto-pairs'
  use 'tpope/vim-dispatch'
  use 'tpope/vim-surround'
  use { 'tpope/vim-fugitive' }
  use { 'tpope/vim-bundler', opt = true, cmd = {'Bundle', 'Bopen', 'Bedit', 'Bsplit', 'Bvsplit', 'Btabedit', 'Bpedit'} }
  use {
    'w0rp/ale',
    ft = {
      'sh', 'bash',
      'html', 'css', 'javascript', 'markdown', 
      'vim', 'lua', 'toml', 
      'ruby', 'erb',
      'python', 'go',
      'dockerfile', 'terraform', 'hcl', 'rego',
      'systemd', 'json', 'yaml'
    },
    cmd = 'ALEEnable',
    config = 'vim.cmd[[ALEEnable]]'
  }
  use { 'neoclide/coc.nvim', branch = 'release' }
  use { 'fatih/vim-go', opt = true, ft = 'go' }
  use { 'sunaku/vim-ruby-minitest', opt = true, ft = 'ruby' }
  use { 'hashivim/vim-terraform', opt = true, ft = {'terraform', 'hcl'} }
  use { 'tmux-plugins/vim-tmux', opt = true, ft = 'tmux' }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)

