return {
  {
    "karb94/neoscroll.nvim",
    event = "VeryLazy",
    config = function()
      local neoscroll = require("neoscroll")

      neoscroll.setup({
        easing_function = "quadratic",
      })

      local keymap = {
        ["<C-j>"] = function()
          neoscroll.ctrl_d({ duration = 120 })
          vim.cmd("normal! zz")
        end,

        ["<C-k>"] = function()
          neoscroll.ctrl_u({ duration = 120 })
          vim.cmd("normal! zz")
        end,

        ["<C-l>"] = function()
          neoscroll.ctrl_f({ duration = 200 })
        end,

        ["<C-;>"] = function()
          neoscroll.ctrl_b({ duration = 200 })
        end,
      }

      for k, v in pairs(keymap) do
        vim.keymap.set("n", k, v, { silent = true })
      end
    end,
  },
}
