require "nvchad.options"

-- add yours here!
local opt = vim.opt

-- Indent
opt.shiftwidth = 4
opt.tabstop = 4

-- UI
opt.cursorline = true
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.relativenumber = true
opt.wrap = false
opt.splitright = true
opt.splitbelow = true

-- Behavior
opt.swapfile = false
opt.backup = false
opt.confirm = true
opt.hidden = true

-- Popup transparency
opt.pumblend = 10
opt.winblend = 10

-- Wildmode
opt.wildmode = "longest:full,full"


