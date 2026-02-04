vim.g.mapleader = ' '

-- Window navigation
vim.keymap.set("n", "<leader>wh", "<C-w>h", { desc = "Window left" })
vim.keymap.set("n", "<leader>wj", "<C-w>j", { desc = "Window down" })
vim.keymap.set("n", "<leader>wk", "<C-w>k", { desc = "Window up" })
vim.keymap.set("n", "<leader>wl", "<C-w>l", { desc = "Window right" })
vim.keymap.set("n", "<leader>ww", "<C-w>w", { desc = "Window next" })
vim.keymap.set("n", "<leader>wc", "<C-w>c", { desc = "Window close" })
vim.keymap.set("n", "<leader>wo", "<C-w>o", { desc = "Window only" })
vim.keymap.set("n", "<leader>w-", "<cmd>split<cr>", { desc = "Window split horizontal" })
vim.keymap.set("n", "<leader>w\\", "<cmd>vsplit<cr>", { desc = "Window split vertical" })

-- Oil: 現在のファイルのディレクトリを開く
vim.keymap.set("n", "-", "<cmd>Oil<cr>", { desc = "Open parent directory" })

-- Clear search highlight
vim.keymap.set("n", "<Esc>", "<cmd>noh<cr>", { desc = "Clear search highlight" })
