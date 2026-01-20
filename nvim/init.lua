-- ~/.config/nvim/init.lua
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Basics
-- executes the script in lua/config/lazy.lua
-- Sets up the lazy.nvim packet manager
require("config.lazy")

-- Vim options --
-- executes the script in lua/config/options.lua
require('config.options')

-- Colorscheme
vim.o.background = "dark" -- or "light" for light mode
vim.cmd("colorscheme kanagawa")

-- Own commands --
require('config.commands')

-- Own key bindings --
require('config.keymaps')
