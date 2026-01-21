vim.g.mapleader = ' '

-- Window navigation
vim.keymap.set("n", "<leader>wh", "<C-w>h", { desc = "Window left" })
vim.keymap.set("n", "<leader>wj", "<C-w>j", { desc = "Window down" })
vim.keymap.set("n", "<leader>wk", "<C-w>k", { desc = "Window up" })
vim.keymap.set("n", "<leader>wl", "<C-w>l", { desc = "Window right" })
vim.keymap.set("n", "<leader>ww", "<C-w>w", { desc = "Window next" })
vim.keymap.set("n", "<leader>wc", "<C-w>c", { desc = "Window close" })
vim.keymap.set("n", "<leader>wo", "<C-w>o", { desc = "Window only" })
