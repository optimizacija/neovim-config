" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
local package_path_str = "/home/jan/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/jan/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/jan/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/jan/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/jan/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

_G.packer_plugins = {
  chadtree = {
    loaded = true,
    path = "/home/jan/.local/share/nvim/site/pack/packer/start/chadtree"
  },
  ["ctrlp.vim"] = {
    loaded = true,
    path = "/home/jan/.local/share/nvim/site/pack/packer/start/ctrlp.vim"
  },
  ["lightline.vim"] = {
    loaded = true,
    path = "/home/jan/.local/share/nvim/site/pack/packer/start/lightline.vim"
  },
  nerdcommenter = {
    loaded = true,
    path = "/home/jan/.local/share/nvim/site/pack/packer/start/nerdcommenter"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/jan/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["palenight.vim"] = {
    loaded = true,
    path = "/home/jan/.local/share/nvim/site/pack/packer/start/palenight.vim"
  },
  ["vim-easymotion"] = {
    loaded = true,
    path = "/home/jan/.local/share/nvim/site/pack/packer/start/vim-easymotion"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/jan/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-startify"] = {
    loaded = true,
    path = "/home/jan/.local/share/nvim/site/pack/packer/start/vim-startify"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/jan/.local/share/nvim/site/pack/packer/start/vim-surround"
  }
}

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
