# Personal NeoVim config

## Icons
Icons are used mainly within nvim-tree plugin. The neovim plugin for icons is already a part of this project.
But your terminal still needs to be able to render the correct font that includes those icons.

Install one of the many icon fonts listed [here](https://www.nerdfonts.com/). Just follow their instructions for your specific OS.
After you have successfully installed one version of the nerd font, set your terminal to use those icon fonts. 
Any reasonable terminal should allow you to selectively set your icon font only for the non-ascii characters, while keeping your 
favorite font for the usual text. Or do something similar.


## TODOS
- git integration (color changed/deleted lines)
- try running LSPInstall in packer
 - example
 -	   -- Treesitter
 -     use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}
- DAP https://github.com/mfussenegger/nvim-dap
- better tab support - opening, closing, reusing tabs
- fix tabstop & numberline
