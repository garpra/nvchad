require "nvchad.options"

-- add yours here!

-- leader
vim.g.mapleader = " "

local o = vim.opt

-- Navigation feel
o.relativenumber = true

-- Better viewport control
o.scrolloff = 8
o.sidescrolloff = 8

-- File safety behavior
o.swapfile = false
o.backup = false
o.confirm = true

-- Text behavior
o.wrap = true
