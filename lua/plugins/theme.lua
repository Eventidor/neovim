-- lua/plugins/theme.lua
return{
    "nyoom-engineering/oxocarbon.nvim",
    lazy=false,
    config = function ()
     vim.g.oxocarbon_style="dark"
     vim.g.oxocarbon_transparent=true
     vim.g.oxocarbon_terminal_colors=true
     vim.g.oxocarbon_italic_comments=true
     vim.g.oxocarbon_bold_keywords=true
     vim.cmd("colorscheme oxocarbon")
    end
}
