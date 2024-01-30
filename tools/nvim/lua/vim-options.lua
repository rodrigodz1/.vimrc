vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.cmd("set clipboard=unnamedplus") -- requires xclip (clipboard provider) on system
vim.api.nvim_set_keymap('n', '<C-k>', ':wincmd k<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', ':wincmd j<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<C-h>', ':wincmd W<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', ':wincmd w<CR>', { silent = true })

vim.keymap.set('n', '<C-s>', ':w<CR>', {})
vim.g.mapleader = " "
