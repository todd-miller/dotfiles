lvim.plugins = {
  "rebelot/kanagawa.nvim",
  "morhetz/gruvbox",
  "ayu-theme/ayu-vim",
  "sainnhe/gruvbox-material",
  "savq/melange-nvim",
  'nvim-telescope/telescope-dap.nvim',
  "christoomey/vim-tmux-navigator",
  {
    "iamcco/markdown-preview.nvim",
    build = function() vim.fn["mkdp#util#install"]() end,
  },
	{
		'rose-pine/neovim',
		name = 'rose-pine'
	},
  "tpope/vim-surround",
  {
    'stevearc/oil.nvim',
    dependencies = { "nvim-tree/nvim-web-devicons"},
  },
  "akinsho/toggleterm.nvim",
  "simrat39/rust-tools.nvim",
  {
    "folke/todo-comments.nvim",
    dependencies = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  },
  -- rust
  {
    "saecki/crates.nvim",
    version = "v0.3.0",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("crates").setup {
        null_ls = {
          enabled = true,
          name = "crates.nvim",
        },
        popup = {
          border = "rounded",
        },
      }
    end,
  },
  "ChristianChiarulli/swenv.nvim",
  "stevearc/dressing.nvim",
}
 
