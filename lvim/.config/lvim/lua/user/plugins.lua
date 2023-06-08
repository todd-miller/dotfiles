lvim.plugins = {
  -- color schemes
  "rebelot/kanagawa.nvim",
  "morhetz/gruvbox",
  "ayu-theme/ayu-vim",
  "sainnhe/gruvbox-material",
  "savq/melange-nvim",

  'nvim-telescope/telescope-dap.nvim',

  -- window navigation
  "christoomey/vim-tmux-navigator",
  
  -- markdown preview
  {
    "iamcco/markdown-preview.nvim",
    build = function() vim.fn["mkdp#util#install"]() end,
  },

  -- oil vim - (file-sys manipulation)
  'stevearc/oil.nvim',

  -- zettlekasten notes
  {
  "renerocksai/telekasten.nvim",
   dependencies = {'nvim-telescope/telescope.nvim'}
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
  {
    "j-hui/fidget.nvim",
    config = function()
      require("fidget").setup()
    end,
  },
}
