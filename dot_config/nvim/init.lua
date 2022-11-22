require('plugins')

vim.cmd("colorscheme nightfox")
require('lualine').setup()
require("scrollbar").setup()

-- 入力
-- 行末の1文字先までカーソルを移動できるように
vim.opt.virtualedit = 'onemore'

-- 見た目
-- 行番号を表示
vim.opt.number = true
-- 現在の行を強調表示
vim.opt.cursorline = true
-- ファイル名を端末のタイトルバーに表示
vim.opt.title = true

-- Tab
-- 入力モードでTabキー押下時に半角スペースを挿入
vim.opt.expandtab = true
-- 挿入する半角スペースの数
vim.opt.tabstop = 2
vim.opt.shiftwidth = 0

-- 検索
-- 検索文字列が小文字の場合は大文字小文字を区別なく検索する
vim.opt.ignorecase = true
-- 検索文字列に大文字が含まれている場合は区別して検索する
vim.opt.smartcase = true
-- ESC連打でハイライト解除
vim.api.nvim_set_keymap('n', '<Esc><Esc>', ':nohlsearch<CR><Esc>', { noremap = true, silent = true })
