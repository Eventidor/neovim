-- lua/plugin/android.lua
return {
  "ariedov/android-nvim",
  config=function()
    vim.g.android_sdk="/usr/lib/android-sdk"
    require("android-nvim").setup()
  end
}
