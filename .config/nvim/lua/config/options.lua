local opt = vim.opt
opt.number = true
opt.cursorline = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.ai = true
opt.hlsearch = true

-- clipboardをシステムと共有
opt.clipboard:append('unnamedplus,unnamed')

-- for colorscheme
opt.background = 'light'
