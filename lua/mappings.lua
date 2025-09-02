require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jj", "<ESC>")
map("n", "<C-a>", "ggVG", { desc = "Select all" })
map({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })
map({ "n", "v" }, "B", "^", { desc = "Beginning of line" })
map({ "n", "v" }, "W", "$", { desc = "End of line" })
