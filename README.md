Hi There Fellow Dev!

I'm slowly working towards porting this entire nvim config to lua (on branch `version-2`).

Since nvim 0.5 lua is going to be the primary choice for writing configs & plugins. Check out the [official guide](https://github.com/nanotee/nvim-lua-guide).
Among many things to look forward to I'm most hyped up for LSPs.
LSPs should & will make it easier to support more programming languages (autocompletion, highlighting, navigation & more).
This will help me support more languages, other than just C++. Which is one of the things that I've struggled with in the current setup.

Don't want to wait?
You don't have to. If you're looking for an already rich nvim IDE-like environment be sure to checkout this awesome project [LunarVim](https://github.com/ChristianChiarulli/LunarVim).

-----

# neovim configuration for c++ development

init.vim should work out of the box.

## Features
* autocompletion 
* linter (syntax highlighting)
* auto formatter
* switching between header / source
* directory tree view
* miscellaneous (highlighting, motion and more)
