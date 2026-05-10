require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("i", "jk", "<ESC>", { desc = "escape insert mode" })

map("n", ";", ":", { desc = "cmd enter command mode" })
map("n", "<Leader>q", "<cmd>q<cr>", { desc = "window close" })

map("n", "<leader>uw", "<cmd>set wrap!<CR>", { desc = "toggle line wrap" })

map({ "n", "i", "v" }, "<C-s>", "<cmd>w<CR>", { desc = "general save file" })

-- nvimtree
map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "nvimtree toggle window" })

-- terminal
map("t", "<ESC>", "<C-\\><C-n>", { desc = "terminal escape terminal mode" })

-- new terminals
map("n", "<leader>tP", "<Cmd>w<CR><Cmd>below split | term python %<CR>i", { noremap = true, silent = true })

-- telescope
map("n", "<leader>fs", "<cmd>Telescope grep_string<CR>", { desc = "search string under cursor" })
