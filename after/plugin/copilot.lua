-- copilot.lua
vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
vim.g.copilot_filetypes = {
    ["*"] = true,
    ["markdown"] = true,
    ["text"] = true,
}
