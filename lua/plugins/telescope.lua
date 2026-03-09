return {
    "nvim-telescope/telescope.nvim",
    "nvim-telescope/telescope-github.nvim",
    requires = { 
        "nvim-lua/plenary.nvim",       -- Dependency for telescope
        "nvim-tree/nvim-web-devicons",-- Icons for telescope
    },
    config = function()
        local actions = require("telescope.actions")
        local devicons = require("nvim-web-devicons")

        -- Setup devicons (optional, default = true)
        devicons.setup({ default = true })

        require("telescope").setup({
            defaults = {
                mappings = {
                    i = {
                        ["<Esc>"] = actions.close,  -- Close telescope with Esc
                    },
                },
                -- Enable devicons in telescope results
                file_ignore_patterns = {},
                sorting_strategy = "ascending",
                border=true,
            },
        })
    end
}
