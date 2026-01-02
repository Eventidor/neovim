-- lua/plugins/statusline.lua
return {
    "hoob3rt/lualine.nvim",
    config = function()
        require('lualine').setup {
            options = {
                theme = 'auto',
                section_separators = {'', ''},
                component_separators = {'', ''},
                disabled_filetypes = {
                    statusline = {},
                    winbar = {},
                },
                ignore_focus = {},
                always_divide_middle = true,
                globalstatus = false,
                refresh = {
                    statusline = 1000,
                    tabline = 1000,
                    winbar = 1000,
                },
                icons_enabled = false
            }

        }
    end
}

