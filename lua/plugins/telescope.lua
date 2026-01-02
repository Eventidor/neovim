-- lua/plugins/telescope.lua
return {
    "nvim-telescope/telescope.nvim",
    requires = { "nvim-lua/plenary.nvim" },  -- Dependency for telescope
    config = function()
        local actions = require("telescope.actions")

        require("telescope").setup({
            defaults = {
                mappings = {
                    i = {
                        ["<Esc>"] = actions.close,  -- Close telescope with Esc
                    },
                },
            },
        })
    end
}

