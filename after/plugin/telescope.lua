-- Load Telescope built-in functions
local builtin = require('telescope.builtin')

-- Key mappings for Telescope functions
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
--write a function that prompts the user for input and then calls the grep_string function this should
--grep over all file in git repo
vim.keymap.set('n', '<leader>pg', function()
	-- Prompt the user for input and perform a grep search
	local search_term = vim.fn.input("Grep > ")
	if search_term ~= "" then
		builtin.live_grep({ search = search_term })
	else
		print("No search term provided")
	end
end)





vim.keymap.set('n', '<leader>ps', function()
	-- Prompt the user for input and perform a grep search
	local search_term = vim.fn.input("Grep > ")
	if search_term ~= "" then
		builtin.grep_string({ search = search_term })
	else
		print("No search term provided")
	end
end)

