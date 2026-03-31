return {
    "jvgrootveld/telescope-zoxide",
    dependencies = {
        "nvim-telescope/telescope.nvim",
        "nvim-lua/plenary.nvim",
    },
    config = function()
        local telescope = require("telescope")

        telescope.setup({
            extensions = {
                zoxide = {
                    mappings = {
                        default = {
                            after_action = function(selection)
                                require("oil").open(selection.path)
                            end,
                        },
                    },
                },
            },
        })

        telescope.load_extension("zoxide")
    end,
    keys = {
        { "<leader>fz", function() require("telescope").extensions.zoxide.list() end, desc = "Zoxide" },
    },
}
