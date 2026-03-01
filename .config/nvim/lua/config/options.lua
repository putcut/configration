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

-- Wayland環境ではwl-copyのタイミング問題を回避するためコピーのみOSC 52を使用
if vim.env.WAYLAND_DISPLAY then
  vim.g.clipboard = {
    name = 'OSC 52 + wl-paste',
    copy = {
      ['+'] = require('vim.ui.clipboard.osc52').copy('+'),
      ['*'] = require('vim.ui.clipboard.osc52').copy('*'),
    },
    paste = {
      ['+'] = { 'wl-paste', '--no-newline' },
      ['*'] = { 'wl-paste', '--no-newline', '--primary' },
    },
  }
end

-- for colorscheme
vim.cmd.colorscheme = 'nordic'
-- opt.background = 'light'

-- winbarにファイルパスを表示
opt.winbar = '%f'  -- 相対パス (%F で絶対パス)

-- 新しいウィンドウを下/右に開く
opt.splitbelow = true
opt.splitright = true

-- ハイフンを単語の一部として扱う
opt.iskeyword:append('-')
