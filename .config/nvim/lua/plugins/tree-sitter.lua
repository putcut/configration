return {
	{
		'nvim-treesitter/nvim-treesitter',
		lazy = false,
		build = ':TSUpdate',
		config = function()
			local ts = require('nvim-treesitter')
			ts.setup({})
			ts.install({
				"javascript",
				"json",
				"lua",
				"markdown",
				"tsx",
				"typescript",
				"vim",
				"yaml",
			})
			vim.api.nvim_create_autocmd("FileType", {
				callback = function()
					pcall(vim.treesitter.start)
				end,
			})
		end,
	},
}
