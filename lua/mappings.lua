require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "<leader>ff", "<cmd> Telescope <cr>")
map("t", "<ESC>", "<C-\\><C-n>")
map("n", "<Leader>q", "<cmd> q <cr>")

map("n", "<leader>tP", "<Cmd>w<CR> <Cmd>below split | term python %<CR> i", { noremap = true, silent = true })

map("n", "<leader>uw", "<cmd>set wrap!<CR>", { desc = "Toggle line wrap" })
