-- Additional Plugins 
lvim.plugins = {
  -- color schemes
  "rebelot/kanagawa.nvim",

  -- angular
  -- "nvim-treesitter/nvim-treesitter-angular",

  -- zettlekasten notes
  "renerocksai/telekasten.nvim",
  "simrat39/rust-tools.nvim",

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


