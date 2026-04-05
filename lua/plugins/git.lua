-- lua/plugins/git.lua
return {
    "tpope/vim-fugitive",            -- Git commands integration
    "lewis6991/gitsigns.nvim",       -- Git sign in the gutter
    "harrisoncramer/gitlab.nvim",
    config = function()
        require('gitsigns').setup()
    end
}

