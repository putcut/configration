return {
    'nvim-mini/mini.cursorword',
    version = false,
    event = 'VeryLazy',
    config = function()
        require('mini.cursorword').setup()
        vim.api.nvim_set_hl(0, 'MiniCursorword', { underline = true, bg = 'NONE' })
        vim.api.nvim_set_hl(0, 'MiniCursorwordCurrent', { underline = true, bg = 'NONE' })
    end,
}

