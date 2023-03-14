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

	use 'jiangmiao/auto-pairs'
	use 'tpope/vim-surround'
	use {'tpope/vim-fugitive'}
	use {'tpope/vim-bundler', opt = true, cmd = {'Bundle', 'Bopen', 'Bedit', 'Bsplit', 'Bvsplit', 'Btabedit', 'Bpedit'}}
	use 'scrooloose/nerdtree'
	use 'scrooloose/nerdcommenter'
	use {'rking/ag.vim', opt = true, cmd = {'Ag'}}
	use 'kien/ctrlp.vim'
	use 'neomake/neomake'
	use {'neoclide/coc.nvim', branch = 'release'}
	use 'fatih/vim-go'
	use 'sunaku/vim-ruby-minitest'
	use 'altercation/vim-colors-solarized'
	use 'hashivim/vim-terraform'
	use 'tmux-plugins/vim-tmux'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)

