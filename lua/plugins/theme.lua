-- lua/plugins/theme.lua
return {
    "morhetz/gruvbox",
    'nvim-tree/nvim-web-devicons',
    lazy =false,
    config = function()
        vim.cmd('colorscheme default')
    end
}

