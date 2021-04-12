local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- fugitive - git support
  use 'tpope/vim-fugitive'

  -- surround vim
  use 'tpope/vim-surround'

  -- chad tree
  use { 
    'ms-jpq/chadtree',
    branch = 'chad',
  }

  -- nerd commenter
  use 'scrooloose/nerdcommenter'

  -- status line
  use 'itchyny/lightline.vim'

  -- easy motion
  use 'easymotion/vim-easymotion'

  -- ctrlp
  use 'kien/ctrlp.vim'

  -- colorscheme
  use 'drewtempelmeyer/palenight.vim'

  -- startify
  use 'mhinz/vim-startify'
end)
