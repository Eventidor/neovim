vim.g.mapleader=' '

vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n','<leader>ff',':Telescope find_files<CR>',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','<leader>fg',':Telescope live_grep<CR>',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','<leader>gs',':Telescope git_status<CR>',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','<leader>gc',':Telescope git_commits<CR>',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','<leader>gi',':Octo issue list <CR>',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','<leader>gcp',':Telescope gh pull_request<CR>',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','<leader>gst',':Telescope gh gist<CR>',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','<leader>gr',':Telescope gh run<CR>',{noremap=true,silent=true})
vim.keymap.set("n", "<leader>e", ":Ex<CR>", { silent = true })
vim.api.nvim_set_keymap('n','<leader>gp',':Git Pull<CR>',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','<leader>tq',':tabclose<CR>',{noremap=true,silent=true})
vim.keymap.set('n',"<leader>r",function()
  dofile(vim.fn.stdpath("config") .. "/init.lua")
  print("Reloaded config")
end)
vim.keymap.set('n', '<leader>t', ':tabnew<Space>', { noremap = true, silent = true })
vim.keymap.set('n','<leader>gb',':Telescope git_branches<CR>',{noremap=true,silent=true})
vim.keymap.set("n", "ww", "<C-w>", { remap = true })
vim.keymap.set('n','<leader>t',':split | :term<CR>')
vim.keymap.set('n','<leader>q',':q<CR>')
vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { noremap = true })
vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
vim.keymap.set('n','<leader>s',':w<CR>')
vim.keymap.set("n", "<leader>g", function()
  local query = vim.fn.input("Search: ")
  local url = "https://duckduckgo.com/?q=" .. query:gsub(" ", "+")

  local buf = vim.api.nvim_create_buf(false, true)
  local width = math.floor(vim.o.columns * 0.8)
  local height = math.floor(vim.o.lines * 0.8)

  local win = vim.api.nvim_open_win(buf, true, {
    relative = "editor",
    width = width,
    height = height,
    col = math.floor((vim.o.columns - width) / 2),
    row = math.floor((vim.o.lines - height) / 2),
    border = "rounded",
  })

  vim.fn.termopen("w3m '" .. url .. "'")
end)
