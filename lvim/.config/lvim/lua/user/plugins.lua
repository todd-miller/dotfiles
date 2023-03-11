
lvim.plugins = {
  -- color schemes
  "rebelot/kanagawa.nvim",
  "morhetz/gruvbox",
  "ayu-theme/ayu-vim",
  "sainnhe/gruvbox-material",
  "savq/melange-nvim",

  -- window navigation
  "christoomey/vim-tmux-navigator",

  -- angular
  -- "nvim-treesitter/nvim-treesitter-angular",

  -- zettlekasten notes
  "renerocksai/telekasten.nvim",
  "simrat39/rust-tools.nvim",
  {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
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
    tag = "v0.3.0",
    requires = { "nvim-lua/plenary.nvim" },
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


