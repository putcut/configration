vim.lsp.enable({
	"ts_ls",
})

-- LSP Keymap
vim.keymap.set("n", "<F2>", vim.lsp.buf.rename, { desc = "Rename" })
vim.keymap.set("n", "<F12>", vim.lsp.buf.definition, { desc = "Go to definition" })
vim.keymap.set("n", "<S-F12>", vim.lsp.buf.references, { desc = "List reference" })
vim.keymap.set("n", "<C-F12>", vim.lsp.buf.implementation, { desc = "Go to implementation" })

-- Diagnostics設定
vim.diagnostic.config({
	virtual_text = false,
	signs = true,
	underline = true,
	update_in_insert = false,
	float = {
		border = "rounded",
		source = true,
	},
})
-- Diagnostic Keymap
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic" })
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Previous diagnostic" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Next diagnostic" })
