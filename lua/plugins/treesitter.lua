return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate", 
    config = function()
        require("nvim-treesitter.config").setup({
          ensure_installed={"markdown","markdown_inline","lua","python","c","c++","java","javascript"},  
          highlight = {
                enable = true,
            },
            indent = {
                enable = true,
            },
        })
    end,
}
