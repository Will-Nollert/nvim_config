vim.g.mapleader = ' '
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
--new remap on leader QQ quit and kill the current terminal session
vim.keymap.set("n", "<leader>QQ", ":q!<CR>:bd!<CR>")
-- Alias for running the current Node.js file
vim.keymap.set("n", "<leader>rn", ":w<CR>:!node %<CR>")
