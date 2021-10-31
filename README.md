# Short Intro

![Screenshot](./assets/nvim-screenshot.png)

This is my NeoVim config (for version 0.6 and greater).

I've decided to move away from the old setup, since modern NeoVim offers much better
and versatile language support through LSP and Lua API. 
Whatever feature the `version-1` had, `version-2` now does it better.

If for whatever reason you would still like to get your hands on the old setup
(which was more c++ oriented)
you can do so by checking out the archived branch [archive/version-1](https://github.com/optimizacija/neovim-config/tree/archive/version-1).

## Features

Here's a short list of features that this config offers (through the use of 3rd party plugins).

* Autocompletion 
* Highlighting 
* Navigation
    * Find definition/declaration/implementation...
    * Find all references (of variables, methods, classes...)
    * Jump cursor focus forward/backward in time
    * Project tree view (NvimTree)
    * Switch between tabs
* Searching
    * Search by file name
    * Search by file contents
    * Search through NeoVim's help
* Refactoring (code actions)
    * Rename (variable, method, class...)
    * Automatically import
    * Simplify code
    * Infer type info
* Diagnostics
    * Show errors/warnings/hints/info
    * Diagnostic panel
    * Integration with status line
* Git
    * Highlight edited lines in number column
    * Navigate between hunks (changes)
    * Stage/unstage hunks
    * Preview old code
    * Status line integration
* Misc
    * Special start page
    * Indent guide lines
    * Motions for surrounding characters (brackets, parentheses...)
    * Easy commenting out code
    * Pretty status line
    * Default colorscheme
    * Enabled mouse integration
    * Keymappings for 10 finger typing on Slovene keyboard 

## Installation

I will make the whole installation process more friendly in the future,
but for now just follow these simple steps.

1. Download this repo
```bash
git clone git@github.com:optimizacija/neovim-config.git
```
2. Put the contents of this repo where NeoVim can find them. On Linux this is most likely `$HOME/.config/nvim`.
3. Create a *data* folder. This is where NeoVim will search for its packages, including Packer.
    - On Linux this is `$HOME/.config/share/nvim`. Otherwise check the output of `:lua print(vim.fn.stdpath('data')`.
4. Open NeoVim and let it install Packer and all the dependencies (ignore the errors).
5. Open NeoVim again and wait for nvim-treesitter to install all of its dependencies (ignore the errors).
6. Install LSP support, run `:LSPInstall <server>` for each lang server you need (this definitelly needs to be improved) (*WIP*)


## Icons
Icons and other special characters are used all around the config to give NeoVim a prettier look.
However, your terminal will not display these icons correctly unless it uses the correct font.

Install one of the icon fonts listed [here](https://www.nerdfonts.com/). Just follow their instructions for your specific OS.
After installation is complete, don't forget to configure your terminal to start using the new font. 
Each terminal does this differently, so be sure to checkout [Arch Wiki](https://wiki.archlinux.org/) if you run into any troubles.


## TODOS

I'm working on this config in my spare time, but lately other side projects are getting in the way. I'll try to update it when I can, but also feel free to contribute by submitting a PR with your changes.

WIP:
- fixing LSP settings
- try running LSPInstall automatically for a list of servers in packer

Minor:
- improve telescope functionality (support regex)

Major:
- autoformat (prettier)
- DAP https://github.com/mfussenegger/nvim-dap

Misc:
- open previously opened project files

