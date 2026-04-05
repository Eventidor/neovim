return {
    "folke/which-key.nvim",
    configs = function()
        -- Set up which-key with the default configuration
        require("which-key").setup({
            plugins = {
                -- Enable common presets (like operators, motions, etc.)
                presets = {
                    operators = true,
                    motions = true,
                    text_objects = true,
                },
            },
            -- Set the keymap for `leaderleader` to show all mappings
            key_labels = { ["<leader>"] = "SPC" },
            window = {
                border = "rounded", -- Border style for the popup
            },
        })

        -- Map `leaderleader` to show all key mappings
        vim.api.nvim_set_keymap('n', '<leader><leader>', ':WhichKey<CR>', { noremap = true, silent = true })
    end,
}
