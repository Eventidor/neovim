vim.g.mapleader=' '

vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n','<leader>ff',':Telescope find_files<CR>',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','<leader>fg',':Telescope live_grep<CR>',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','<leader>gs',':Telescope git_status<CR>',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','<leader>gc',':Telescope git_commits<CR>',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','<leader>e',':Ex<CR>',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','<leader>gp',':Git Pull',{noremap=true,silent=true})



