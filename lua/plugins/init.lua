-- lua/plugins/init.lua
require("lazy").setup({
    -- Plugin files to load
    require("plugins.theme"),
    require("plugins.lsp"),
    require("plugins.completion"),
    require("plugins.treesitter"),
    require("plugins.git"),
    require("plugins.telescope"),
    require("plugins.statusline"),
    require("plugins.android"),
    require("plugins.supermaven"),
    require("plugins.nvim-cmp"),
})

