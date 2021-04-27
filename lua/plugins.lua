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
  -- TODO: try out galaxy line
  use 'itchyny/lightline.vim'

  -- show recent files on empty nvim command
  use 'mhinz/vim-startify'

  -- lsp config
  use 'neovim/nvim-lspconfig'
  
  -- for installing LSP servers within nvim
  use 'kabouzeid/nvim-lspinstall'

  -- for LSP autocompletion
  use 'hrsh7th/nvim-compe'

  -- telescope - searching / navigation
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}, {'livegrep/livegrep'}}
  }

  -- better hotfix window (for showing and searching through results in telescope's find usages)
  use {"kevinhwang91/nvim-bqf"}

  -- better highlighting
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

  -- nvim & icons for nvim
  use 'kyazdani42/nvim-web-devicons'
  use 'kyazdani42/nvim-tree.lua'
  
  -- prettier tabs
  use 'romgrk/barbar.nvim'

  -- nice diagnostic pane on the bottom
  use 'folke/lsp-trouble.nvim'

  -- support the missing lsp diagnostic colors
  use 'folke/lsp-colors.nvim'
end)

-- plugin specific configs go here
require('plugin-config/nvim-compe')
require('plugin-config/telescope')
require('plugin-config/nvim-tree')
require('plugin-config/nvim-treesitter')
require('plugin-config/barbar')
require('plugin-config/lsp-colors')
require('plugin-config/lsp-trouble')

return packer
