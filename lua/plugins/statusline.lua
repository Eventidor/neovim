-- lua/plugins/statusline.lua
return {
    "hoob3rt/lualine.nvim",
    config = function()
        require('lualine').setup {
            options = {
                theme = 'codedark',
                component_separators="";
                section_separators="",
                icons_enabled = false
            }

        }
    end
}

