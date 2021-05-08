# Short Intro

This is my NeoVim config (for version 0.5 and greater).

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

1. Install the package manager - [packer](https://github.com/wbthomason/packer.nvim)
2. Download this repo
```bash
git clone git@github.com:optimizacija/neovim-config.git
```
3. Put the contents of this repo where NeoVim can find them. On Linux this is most likely `$HOME/.config/nvim`.
4. Open NeoVim and run `:PackerInstall` command to install all the plugins.
5. Install LSP support, run `:LSPInstall <server>` for each lang server you need (this definitelly needs to be improved)

If you run into any troubles try reopening NeoVim and rerun install commands.


## Icons
Icons and other special characters are used all around the config to give NeoVim a prettier look.
However, your terminal will not display these icons correctly unless it uses the correct font.

Install one of the icon fonts listed [here](https://www.nerdfonts.com/). Just follow their instructions for your specific OS.
After installation is complete, don't forget to configure your terminal to start using the new font. 
Each terminal does this differently, so be sure to checkout [Arch Wiki](https://wiki.archlinux.org/) if you run into any troubles.


## TODOS

Stuff that's work in progress.

Minor:
- fix gitsigns colorscheme issues
- prettify telescope & improve functionality (support regex)

Major:
- autoformat (prettier)
- DAP https://github.com/mfussenegger/nvim-dap

Future:
- try running LSPInstall automatically for a list of servers in packer
- automatic dependency installation (Packer)

Misc:
- read TODOs in the source code
