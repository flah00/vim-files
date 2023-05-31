-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/philipchampon/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/philipchampon/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/philipchampon/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/philipchampon/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/philipchampon/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ale = {
    commands = { "ALEEnable" },
    config = { "vim.cmd[[ALEEnable]]" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/philipchampon/.local/share/nvim/site/pack/packer/opt/ale",
    url = "https://github.com/w0rp/ale"
  },
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/philipchampon/.local/share/nvim/site/pack/packer/start/auto-pairs",
    url = "https://github.com/jiangmiao/auto-pairs"
  },
  ["coc.nvim"] = {
    loaded = true,
    path = "/home/philipchampon/.local/share/nvim/site/pack/packer/start/coc.nvim",
    url = "https://github.com/neoclide/coc.nvim"
  },
  fzf = {
    loaded = true,
    path = "/home/philipchampon/.local/share/nvim/site/pack/packer/start/fzf",
    url = "https://github.com/junegunn/fzf"
  },
  nerdcommenter = {
    loaded = true,
    path = "/home/philipchampon/.local/share/nvim/site/pack/packer/start/nerdcommenter",
    url = "https://github.com/scrooloose/nerdcommenter"
  },
  nerdtree = {
    loaded = true,
    path = "/home/philipchampon/.local/share/nvim/site/pack/packer/start/nerdtree",
    url = "https://github.com/scrooloose/nerdtree"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/philipchampon/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/philipchampon/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["vim-bundler"] = {
    commands = { "Bundle", "Bopen", "Bedit", "Bsplit", "Bvsplit", "Btabedit", "Bpedit" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/philipchampon/.local/share/nvim/site/pack/packer/opt/vim-bundler",
    url = "https://github.com/tpope/vim-bundler"
  },
  ["vim-colors-solarized"] = {
    loaded = true,
    path = "/home/philipchampon/.local/share/nvim/site/pack/packer/start/vim-colors-solarized",
    url = "https://github.com/altercation/vim-colors-solarized"
  },
  ["vim-dispatch"] = {
    loaded = true,
    path = "/home/philipchampon/.local/share/nvim/site/pack/packer/start/vim-dispatch",
    url = "https://github.com/tpope/vim-dispatch"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/philipchampon/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-go"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/philipchampon/.local/share/nvim/site/pack/packer/opt/vim-go",
    url = "https://github.com/fatih/vim-go"
  },
  ["vim-grepper"] = {
    loaded = true,
    path = "/home/philipchampon/.local/share/nvim/site/pack/packer/start/vim-grepper",
    url = "https://github.com/mhinz/vim-grepper"
  },
  ["vim-ruby-minitest"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/philipchampon/.local/share/nvim/site/pack/packer/opt/vim-ruby-minitest",
    url = "https://github.com/sunaku/vim-ruby-minitest"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/philipchampon/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-terraform"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/philipchampon/.local/share/nvim/site/pack/packer/opt/vim-terraform",
    url = "https://github.com/hashivim/vim-terraform"
  },
  ["vim-test"] = {
    loaded = true,
    path = "/home/philipchampon/.local/share/nvim/site/pack/packer/start/vim-test",
    url = "https://github.com/vim-test/vim-test"
  },
  ["vim-tmux"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/philipchampon/.local/share/nvim/site/pack/packer/opt/vim-tmux",
    url = "https://github.com/tmux-plugins/vim-tmux"
  },
  ["vim-unimpaired"] = {
    loaded = true,
    path = "/home/philipchampon/.local/share/nvim/site/pack/packer/start/vim-unimpaired",
    url = "https://github.com/tpope/vim-unimpaired"
  },
  ["yaml-revealer"] = {
    loaded = true,
    path = "/home/philipchampon/.local/share/nvim/site/pack/packer/start/yaml-revealer",
    url = "https://github.com/Einenlum/yaml-revealer"
  }
}

time([[Defining packer_plugins]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.api.nvim_create_user_command, 'Bedit', function(cmdargs)
          require('packer.load')({'vim-bundler'}, { cmd = 'Bedit', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-bundler'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('Bedit ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'Bsplit', function(cmdargs)
          require('packer.load')({'vim-bundler'}, { cmd = 'Bsplit', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-bundler'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('Bsplit ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'Bvsplit', function(cmdargs)
          require('packer.load')({'vim-bundler'}, { cmd = 'Bvsplit', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-bundler'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('Bvsplit ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'Btabedit', function(cmdargs)
          require('packer.load')({'vim-bundler'}, { cmd = 'Btabedit', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-bundler'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('Btabedit ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'Bpedit', function(cmdargs)
          require('packer.load')({'vim-bundler'}, { cmd = 'Bpedit', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-bundler'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('Bpedit ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'ALEEnable', function(cmdargs)
          require('packer.load')({'ale'}, { cmd = 'ALEEnable', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'ale'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('ALEEnable ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'Bundle', function(cmdargs)
          require('packer.load')({'vim-bundler'}, { cmd = 'Bundle', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-bundler'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('Bundle ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'Bopen', function(cmdargs)
          require('packer.load')({'vim-bundler'}, { cmd = 'Bopen', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-bundler'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('Bopen ', 'cmdline')
      end})
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType tmux ++once lua require("packer.load")({'vim-tmux'}, { ft = "tmux" }, _G.packer_plugins)]]
vim.cmd [[au FileType sh ++once lua require("packer.load")({'ale'}, { ft = "sh" }, _G.packer_plugins)]]
vim.cmd [[au FileType bash ++once lua require("packer.load")({'ale'}, { ft = "bash" }, _G.packer_plugins)]]
vim.cmd [[au FileType html ++once lua require("packer.load")({'ale'}, { ft = "html" }, _G.packer_plugins)]]
vim.cmd [[au FileType css ++once lua require("packer.load")({'ale'}, { ft = "css" }, _G.packer_plugins)]]
vim.cmd [[au FileType javascript ++once lua require("packer.load")({'ale'}, { ft = "javascript" }, _G.packer_plugins)]]
vim.cmd [[au FileType vim ++once lua require("packer.load")({'ale'}, { ft = "vim" }, _G.packer_plugins)]]
vim.cmd [[au FileType toml ++once lua require("packer.load")({'ale'}, { ft = "toml" }, _G.packer_plugins)]]
vim.cmd [[au FileType ruby ++once lua require("packer.load")({'ale', 'vim-ruby-minitest'}, { ft = "ruby" }, _G.packer_plugins)]]
vim.cmd [[au FileType erb ++once lua require("packer.load")({'ale'}, { ft = "erb" }, _G.packer_plugins)]]
vim.cmd [[au FileType python ++once lua require("packer.load")({'ale'}, { ft = "python" }, _G.packer_plugins)]]
vim.cmd [[au FileType dockerfile ++once lua require("packer.load")({'ale'}, { ft = "dockerfile" }, _G.packer_plugins)]]
vim.cmd [[au FileType terraform ++once lua require("packer.load")({'ale', 'vim-terraform'}, { ft = "terraform" }, _G.packer_plugins)]]
vim.cmd [[au FileType hcl ++once lua require("packer.load")({'ale', 'vim-terraform'}, { ft = "hcl" }, _G.packer_plugins)]]
vim.cmd [[au FileType rego ++once lua require("packer.load")({'ale'}, { ft = "rego" }, _G.packer_plugins)]]
vim.cmd [[au FileType systemd ++once lua require("packer.load")({'ale'}, { ft = "systemd" }, _G.packer_plugins)]]
vim.cmd [[au FileType yaml ++once lua require("packer.load")({'ale'}, { ft = "yaml" }, _G.packer_plugins)]]
vim.cmd [[au FileType json ++once lua require("packer.load")({'ale'}, { ft = "json" }, _G.packer_plugins)]]
vim.cmd [[au FileType lua ++once lua require("packer.load")({'ale'}, { ft = "lua" }, _G.packer_plugins)]]
vim.cmd [[au FileType go ++once lua require("packer.load")({'ale', 'vim-go'}, { ft = "go" }, _G.packer_plugins)]]
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'ale'}, { ft = "markdown" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /home/philipchampon/.local/share/nvim/site/pack/packer/opt/vim-tmux/ftdetect/tmux.vim]], true)
vim.cmd [[source /home/philipchampon/.local/share/nvim/site/pack/packer/opt/vim-tmux/ftdetect/tmux.vim]]
time([[Sourcing ftdetect script at: /home/philipchampon/.local/share/nvim/site/pack/packer/opt/vim-tmux/ftdetect/tmux.vim]], false)
time([[Sourcing ftdetect script at: /home/philipchampon/.local/share/nvim/site/pack/packer/opt/vim-go/ftdetect/gofiletype.vim]], true)
vim.cmd [[source /home/philipchampon/.local/share/nvim/site/pack/packer/opt/vim-go/ftdetect/gofiletype.vim]]
time([[Sourcing ftdetect script at: /home/philipchampon/.local/share/nvim/site/pack/packer/opt/vim-go/ftdetect/gofiletype.vim]], false)
time([[Sourcing ftdetect script at: /home/philipchampon/.local/share/nvim/site/pack/packer/opt/vim-terraform/ftdetect/hcl.vim]], true)
vim.cmd [[source /home/philipchampon/.local/share/nvim/site/pack/packer/opt/vim-terraform/ftdetect/hcl.vim]]
time([[Sourcing ftdetect script at: /home/philipchampon/.local/share/nvim/site/pack/packer/opt/vim-terraform/ftdetect/hcl.vim]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
