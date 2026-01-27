return {
	{
		"sainnhe/everforest",
		lazy = false,
		priority = 1000,
		-- config = function()
		-- 	vim.cmd.colorscheme("everforest")
		-- end,
	},
    {
        "nyoom-engineering/oxocarbon.nvim",
		lazy = false,
		priority = 1000,
    },
    {
        "AlexvZyl/nordic.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require('nordic').load()
        end
    },
}
