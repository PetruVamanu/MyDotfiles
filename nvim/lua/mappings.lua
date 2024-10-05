require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n" ,"<C-h>", ":TmuxNavigateLeft<cr>")
map("n" ,"<C-j>", ":TmuxNavigateDown<cr>")
map("n" ,"<C-k>", ":TmuxNavigateRight<cr>")
map("n" ,"<C-l>", ":TmuxNavigateUp<cr>")
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
