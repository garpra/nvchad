require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<C-s>", "<cmd>w<CR>", { desc = "Save file" })
map({ "i", "x", "s" }, "<C-s>", "<cmd>w<CR><Esc>", { desc = "Save file" })

-- Navigation
map("n", "<C-a>", "ggVG", { desc = "Select all text" })
map({ "n", "v" }, "H", "^", { desc = "Jump to beginning of line" })
map({ "n", "v" }, "L", "$", { desc = "Jump to end of line" })

-- Edit
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line down" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line up" })

-- Split Window
map("n", "<leader>sh", "<cmd>sp<CR>", { desc = "Split: horizontal" })
map("n", "<leader>sv", "<cmd>vsp<CR>", { desc = "Split: vertical" })
map("n", "<leader>se", "<cmd>wincmd =<CR>", { desc = "Split: equalize size" })
map("n", "<leader>sx", "<cmd>close<CR>", { desc = "Split: close current pane" })

-- Resize Panel
map("n", "<C-Left>", "<cmd>vertical resize -2<CR>", { desc = "Pane: decrease width" })
map("n", "<C-Right>", "<cmd>vertical resize +2<CR>", { desc = "Pane: increase width" })
map("n", "<C-Up>", "<cmd>resize +2<CR>", { desc = "Pane: increase height" })
map("n", "<C-Down>", "<cmd>resize -2<CR>", { desc = "Pane: decrease height" })
