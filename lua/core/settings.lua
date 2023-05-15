local opt = vim.opt

vim.g.mapleader = ","

opt.fileencoding = "utf-8"
opt.showmode = false
opt.undofile = true

-- Nvim-Tree设置
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- 行号
opt.number = true
opt.signcolumn = "yes"

-- 缩进
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- 光标行
opt.cursorline = true

-- 启用鼠标
opt.mouse = "a"

-- 启用系统剪切板
opt.clipboard = "unnamedplus"

-- 默认新窗口右下
opt.splitright = true
opt.splitbelow = true

-- 搜索
opt.ignorecase = true
opt.smartcase = true

-- 真彩
opt.termguicolors = true

