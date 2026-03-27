return {
    "jvgrootveld/telescope-zoxide",
    dependencies = {
        "nvim-telescope/telescope.nvim",
        "nvim-lua/plenary.nvim",
    },
    config = function()
        local telescope = require("telescope")
        telescope.load_extension("zoxide")
    end,
    keys = {
        { "<leader>fz", function() require("telescope").extensions.zoxide.list() end, desc = "Zoxide" },
    },
}
