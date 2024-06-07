-- plugins/gpt.lua
local chatgpt = require("chatgpt")

-- Access the API key from the environment variable
local api_key = vim.fn.getenv("OPENAI_API_KEY")

if not api_key or api_key == "" then
    vim.api.nvim_err_writeln("Error: OPENAI_API_KEY environment variable is not set!")
    return
end

chatgpt.setup({
    api_key = api_key,
    default_model = 'gpt-3.5-turbo',  -- Choose your default model
    -- Additional configuration options
})

-- Optional: Keybindings
