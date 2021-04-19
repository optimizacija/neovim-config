local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end

local packer = require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- colorscheme
  use 'drewtempelmeyer/palenight.vim'

  -- git integration
  use 'tpope/vim-fugitive'

  -- surround vim
  use 'tpope/vim-surround'
	
  -- nerd commenter
	use 'scrooloose/nerdcommenter'

  -- status line
  use 'itchyny/lightline.vim'

  -- show recent files on empty nvim command
  use 'mhinz/vim-startify'

  -- lsp config
  use 'neovim/nvim-lspconfig'
	
	-- for installing LSP servers within nvim
	use 'kabouzeid/nvim-lspinstall'
	
	-- for LSP autocompletion
	use 'hrsh7th/nvim-compe'

  -- TODO fuzzy file search, chadtree etc
end)

-- plugin specifi configs go here
require('plugin-config/nvim-compe')

return packer
