return {
  'supermaven-inc/supermaven-nvim',
  config=function()
    require('supermaven-nvim').setup({
      keymaps={
        accept_suggestion="<Tab>",
        clear_suggestion="<Escape",
        accept_word="<C-j>",
      },
      color = {suggestion_color="red"}
    })
  end
}
