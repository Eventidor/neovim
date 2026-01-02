vim.opt.number = true               -- Show line numbers
vim.opt.relativenumber = true       -- Relative line numbers
vim.opt.ignorecase = true           -- Case insensitive searching
vim.opt.smartcase = true            -- Smart case searching
vim.opt.hlsearch = false           -- Don't highlight search results
vim.opt.expandtab = true            -- Use spaces instead of tabs
vim.opt.shiftwidth = 2              -- Set indentation width to 2 spaces
vim.opt.tabstop = 2                 -- Set tab width to 2 spaces
vim.opt.smartindent = true          -- Smart auto-indentation
vim.opt.termguicolors = true       
-- Clipboard Integration
vim.opt.clipboard = 'unnamedplus'  -- Use system clipboard

-- Enable mouse
vim.opt.mouse = 'a'                -- Enable mouse support in all modes

-- Search and completion
vim.opt.incsearch = true           -- Incremental search
vim.opt.wildmenu = true            -- Command-line completion enhancements
vim.opt.completeopt = 'menuone,noinsert,noselect'

-- Split behavior
vim.opt.splitright = true          -- Open vertical splits to the right
vim.opt.splitbelow = true          -- Open horizontal splits below


vim.opt.rtp:prepend(vim.fn.stdpath('config') .. '/lua')

-- Load lazy.nvim from the custom path
vim.opt.runtimepath:prepend("~/.config/nvim/lua/pack/packer/start/lazy.nvim")


