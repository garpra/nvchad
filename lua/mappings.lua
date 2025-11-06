require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jj", "<ESC>")
map("n", "<C-a>", "ggVG", { desc = "Select all" })
map({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })
map({ "n", "v" }, "B", "^", { desc = "Beginning of line" })
map({ "n", "v" }, "W", "$", { desc = "End of line" })

-- Trouble
map("n", "<leader>tt", "<cmd>Trouble diagnostics toggle<cr>", { desc = "Trouble: semua diagnostics" })
map("n", "<leader>tb", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", { desc = "Trouble: diagnostics file ini" })
map("n", "<leader>ts", "<cmd>Trouble symbols toggle<cr>", { desc = "Trouble: symbols" })
map("n", "<leader>tq", "<cmd>Trouble qflist toggle<cr>", { desc = "Trouble: quickfix list" })
