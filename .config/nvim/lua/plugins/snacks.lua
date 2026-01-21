return {
    "folke/snacks.nvim",
    lazy = false,
    ---@type snacks.Config
    opts = {
        picker = {
            sources = {
                files = {
                    hidden = true,
                    ignored = true,
                },
                grep = {
                    hidden = true,
                    ignored = true,
                },
            },
            exclude = {
                ".git",
                "node_modules",
                "dist",
                ".next",
            }
        },
    },
    keys = {
        { "<leader>ff", function() Snacks.picker.files() end, desc = "Find Files" },
        { "<leader>fg", function() Snacks.picker.grep() end, desc = "Grep" },
        { "<leader>fb", function() Snacks.picker.buffers() end, desc = "Buffers" },
        { "<leader>fh", function() Snacks.picker.help() end, desc = "Help" },
        { "<leader>fr", function() Snacks.picker.recent() end, desc = "Recent Files" },
    },
}
