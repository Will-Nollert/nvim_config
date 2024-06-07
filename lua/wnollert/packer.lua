-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use {'wbthomason/packer.nvim'}

	-- Mason and LSP
	use {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	}

	-- Telescope
	use {
		'nvim-telescope/telescope.nvim',
		tag = '0.1.6',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- Rose-pine colorscheme
	use {
		'rose-pine/neovim',
		as = 'rose-pine',
		config = function()
			vim.cmd('colorscheme rose-pine')
		end
	}

	use 'nvim-treesitter/playground'

	-- Harpoon
	use 'theprimeagen/harpoon'

	-- TreeSitter 
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate',
		}config = function()
			vim.cmd('source ~/.config/nvim/after/plugin/treesitter.lua')
		end
	
	-- LSP Zero
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			{'neovim/nvim-lspconfig'},
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'L3MON4D3/LuaSnip'},
		}
	}
	-- GitHub Copilot
	use 'github/copilot.vim'
	-- Markdown Preview
	use 'iamcco/markdown-preview.nvim'
	-- Add chatGPT.nvim
	use {
		'jackMort/chatGPT.nvim',
		requires = {
			'MunifTanjim/nui.nvim',
			'nvim-lua/plenary.nvim',
			'nvim-telescope/telescope.nvim'
		},
	}config = function()
		vim.cmd('source ~/.config/nvim/after/plugin/gpt.lua')
	end
end)

