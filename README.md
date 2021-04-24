# Personal NeoVim config

## Icons
Icons are mainly used by `nvim-tree` plugin. The plugin for icons is already installed by this config.
But your terminal still needs to be able to render the icon font.

### Installing Icon fonts

Install one of the icon fonts listed [here](https://www.nerdfonts.com/). Just follow their instructions for your specific OS.
After you have successfully installed it, you still have to configure your terminal to start using the new font. 
Any reasonable terminal should allow you to enable the new icon font only for certain set of (non-ascii) characters. 


## TODOS
- git integration (color changed/deleted lines)
- try running LSPInstall in packer
 - example
 -	   -- Treesitter
 -     use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}
- DAP https://github.com/mfussenegger/nvim-dap
- better tab support - opening, closing, reusing tabs
- fix tabstop & numberline
- fix basic settings
