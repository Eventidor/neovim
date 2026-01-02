-- lua/plugins/treesitter.lua
return {
    "nvim-treesitter/nvim-treesitter",
    run = ':TSUpdate',
    config = function()
        require("nvim-treesitter.configs").setup({
           
            highlight = {
                enable = true,                 -- Enable Treesitter-based highlighting
            },
            indent = {
                enable = true,                 -- Enable Treesitter-based indentation
            },
        })
    end
}

