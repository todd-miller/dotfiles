vim.g.mapleader = " "
return {
	"folke/neodev.nvim",
	"folke/which-key.nvim",
	"theprimeagen/harpoon",
	"mbbill/undotree",
	{
		'alexghergh/nvim-tmux-navigation', config = function()
			require('settings.tmux-navigator')
		end
	},
	{
	  'stevearc/oil.nvim',
	  opts = {},
	  -- Optional dependencies
	  dependencies = { "nvim-tree/nvim-web-devicons" },
	},
	{ "folke/neoconf.nvim", cmd = "Neoconf" },
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.2',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},
	{
		"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"
	},
	"nvim-treesitter/playground",
	{
		'rose-pine/neovim',
		name = 'rose-pine'
	},
	{
	    'VonHeikemen/lsp-zero.nvim',
	    branch = 'v2.x',
	    dependencies = {
	      -- LSP Support
	      {'neovim/nvim-lspconfig'},             -- Required
	      {'williamboman/mason.nvim'},           -- Optional
	      {'williamboman/mason-lspconfig.nvim'}, -- Optional

	      -- Autocompletion
	      {'hrsh7th/nvim-cmp'},     -- Required
	      {'hrsh7th/cmp-nvim-lsp'}, -- Required
	      {'L3MON4D3/LuaSnip'},     -- Required
	    }
  	}
}


