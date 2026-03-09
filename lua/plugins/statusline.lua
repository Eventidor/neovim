-- lua/plugins/statusline.lua
return {
    "rebelot/heirline.nvim",
    config = function()
        local heirline = require("heirline")

        -- ViMode component with OS-dependent logo
        local ViMode = {
            provider = function()
                -- Get OS information
                local os = vim.loop.os_uname().sysname

                -- Choose logo based on OS type
                if os == "Linux" then
                    -- Check if Debian is the OS
                    local os_release = vim.fn.systemlist("cat /etc/os-release")
                    for _, line in ipairs(os_release) do
                        if line:match("Debian") then
                            return " " -- Debian logo
                        end
                    end
                    return " " -- Linux (generic) logo
                elseif os == "Darwin" then
                    return " " -- macOS logo
                elseif os == "Windows_NT" then
                    return " " -- Windows logo
                else
                    return " " -- Default logo for other systems
                end
            end,
            hl = { fg = "#D70A53", bold = true },
        }

        -- Git Branch component with error handling for missing Git repo
        local GitBranch = {
            provider = function()
                -- Try to get the current Git branch, handle the case if not in a git repo
                local status = vim.fn.systemlist("git rev-parse --abbrev-ref HEAD 2>/dev/null")
                if status[1] then
                    return " " .. status[1] -- Git branch logo and branch name
                end
                return "" -- If not in a git repo, return empty string
            end,
            hl = { fg = "#6A9ECF", bold = true },  -- Blue for Git branch
        }

        -- File name component
        local FileName = {
            provider = function()
                return vim.fn.expand("%:t")
            end,
        }

        -- Cursor position component
        local Ruler = {
            provider = function()
                local line = vim.fn.line(".")
                local col = vim.fn.col(".")
                return string.format(" %d:%d ", line, col)
            end,
        }

        -- Set up the statusline
        heirline.setup({
            statusline = {
                ViMode,
                { provider = " " },
                GitBranch,  -- Add GitBranch component
                { provider = " " },
                FileName,
                { provider = "%=" },
                Ruler,
            },
        })
    end,
}
