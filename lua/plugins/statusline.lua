-- lua/plugins/statusline.lua
return {
    "rebelot/heirline.nvim",
    config = function()
        local heirline = require("heirline")
        local colors = {
            bg = "#1e1e2e",
            fg = "#c0caf5",
            red = "#f7768e",
            green = "#9ece6a",
            yellow = "#e0af68",
            blue = "#7aa2f7",
            magenta = "#bb9af7",
            cyan = "#7dcfff",
            violet = "#9d7cd8",
            orange = "#ff9e64",
        }

        -- Mode colors
        local mode_colors = {
            n = colors.green,
            i = colors.blue,
            v = colors.magenta,
            ["␖"] = colors.magenta,
            V = colors.magenta,
            c = colors.red,
            R = colors.violet,
            t = colors.red,
        }

        -- **OS Logo (left-most)**
        local OSLogo = {
            provider = function()
                local os = vim.loop.os_uname().sysname
                if os == "Linux" then
                    local os_release = vim.fn.systemlist("cat /etc/os-release")
                    for _, line in ipairs(os_release) do
                        if line:match("Debian") then
                            return " " -- Debian logo
                        end
                    end
                    return " " -- Generic Linux logo
                elseif os == "Darwin" then
                    return " " -- macOS logo
                elseif os == "Windows_NT" then
                    return " " -- Windows logo
                else
                    return " " -- Default for other OS
                end
            end,
            hl = { fg = colors.red, bold = true },
        }

        -- ViMode component
        local ViMode = {
            provider = function()
                local mode = vim.fn.mode():upper()
                return " " .. mode .. " "
            end,
            hl = function()
                local mode = vim.fn.mode()
                return { fg = mode_colors[mode] or colors.red, bold = true }
            end,
        }

        -- Git Branch
        local GitBranch = {
            provider = function()
                local branch = vim.fn.systemlist("git rev-parse --abbrev-ref HEAD 2>/dev/null")
                if branch[1] and branch[1] ~= "" then
                    return " " .. branch[1]
                end
                return ""
            end,
            hl = { fg = colors.blue, bold = true },
        }

        -- File name with flags
        local FileName = {
            provider = function()
                local name = vim.fn.expand("%:t")
                if name == "" then
                    return "[No Name]"
                end
                if vim.bo.modified then
                    name = name .. " [+]"
                elseif vim.bo.readonly then
                    name = name .. " [-]"
                end
                return name
            end,
            hl = { fg = colors.fg, bold = true },
        }

        -- LSP Diagnostics
        local Diagnostics = {
            provider = function()
                local errors = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.ERROR })
                local warnings = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.WARN })
                local hints = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.HINT })
                local info = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.INFO })
                local result = ""
                if errors > 0 then
                    result = result .. "  " .. errors
                end
                if warnings > 0 then
                    result = result .. "  " .. warnings
                end
                if info > 0 then
                    result = result .. "  " .. info
                end
                if hints > 0 then
                    result = result .. "  " .. hints
                end
                return result
            end,
            hl = { fg = colors.red },
        }

       local FileStats = {
            provider = function()
                local total_lines = vim.fn.line("$")
                local size = vim.fn.getfsize(vim.fn.expand("%:p"))
                local formatted_size
                if size < 1024 then
                    formatted_size = size .. "B"
                elseif size < 1024*1024 then
                    formatted_size = string.format("%.1fKB", size / 1024)
                else
                    formatted_size = string.format("%.1fMB", size / (1024*1024))
                end
                return string.format("%dL | %s", total_lines, formatted_size)
            end,
            hl = { fg = colors.cyan },
        }
        -- Cursor position (right)
        local Ruler = {
            provider = function()
                local line = vim.fn.line(".")
                local col = vim.fn.col(".")
                return string.format(" %d:%d ", line, col)
            end,
            hl = { fg = colors.fg },
        }

        -- Assemble statusline
        heirline.setup({
            statusline = {
                OSLogo,      -- OS logo at far left
                ViMode,
                { provider = " " },
                GitBranch,
                { provider = " " },
                FileName,
                { provider = " " },
                Diagnostics,
                { provider = "%=" }, -- push next components to the right
                FileStats,
                { provider = " " },
                Ruler,
            },
        })
    end,
}
