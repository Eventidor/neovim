-- Leader key (Primeagen style)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- Tabs / indentation
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Search
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- UI
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

-- Splits
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- Mouse
vim.opt.mouse = "a"

-- Completion
vim.opt.completeopt = "menuone,noinsert,noselect"
vim.opt.wildmenu = true

-- Performance
vim.opt.updatetime = 50

-- Disable intro screen
vim.opt.shortmess:append("I")

-- Runtime path
vim.opt.rtp:prepend(vim.fn.stdpath("config") .. "/lua")

-- lazy.nvim path
vim.opt.runtimepath:prepend("~/.config/nvim/lua/pack/packer/start/lazy.nvim")
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
-- disable netrw (so nvim-tree replaces it)
vim.g.netrw_banner=0
vim.o.fillchars="eob: "
