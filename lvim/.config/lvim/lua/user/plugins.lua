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
  -- {
  --   "mfussenegger/nvim-dap",
  --   lazy = false,
  --   -- module = { "dap" },
  --   keys = { [[<leader>d]] },
  --   dependencies = {
  --     "theHamsta/nvim-dap-virtual-text",
  --     "rcarriga/nvim-dap-ui",
  --     "mfussenegger/nvim-dap-python",
  --     "nvim-telescope/telescope-dap.nvim",
  --     { "leoluz/nvim-dap-go",                module = "dap-go" },
  --     { "jbyuki/one-small-step-for-vimkind", module = "osv" },
  --     { "mxsdev/nvim-dap-vscode-js",         module = { "dap-vscode-js" } },
  --     {
  --       "microsoft/vscode-js-debug",
  --       lazy = false,
  --       build = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out"
  --     },
  --   },
  --   config = function()
  --     require("user.dap").setup()
  --   end,
  --   enabled = true,
  -- },
  {
    "microsoft/vscode-js-debug",
    lazy = true,
    build = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out"
  },
  -- oil vim - (file-sys manipulation)
  {
    'stevearc/oil.nvim',
    config = function()
      require('oil').setup {
        keymaps = {
          ["g?"] = "actions.show_help",
          ["<CR>"] = "actions.select",
          ["<C-s>"] = "actions.select_vsplit",
          ["<C-h>"] = "<Cmd>TmuxNavigateLeft<CR>",
          ["<C-t>"] = "actions.select_tab",
          ["<C-p>"] = "actions.preview",
          ["<C-c>"] = "actions.close",
          ["<C-l>"] = "<Cmd>TmuxNavigateRight<CR>",
          ["<S-l>"] = ":BufferLineCycleNext<CR>",
          ["<S-h>"] = ":BufferLineCyclePrev<CR>",
          ["-"] = "actions.parent",
          ["_"] = "actions.open_cwd",
          ["`"] = "actions.cd",
          ["~"] = "actions.tcd",
          ["g."] = "actions.toggle_hidden",
        },
        view_options = {
          -- Show files and directories that start with "."
          show_hidden = true,
          -- This function defines what is considered a "hidden" file
          is_hidden_file = function(name, bufnr)
            return vim.startswith(name, ".")
          end,
          -- This function defines what will never be shown, even when `show_hidden` is set
          is_always_hidden = function(name, bufnr)
            return false
          end,
        },
      }
    end
  },

  -- zettlekasten notes
  {
    "renerocksai/telekasten.nvim",
    dependencies = { 'nvim-telescope/telescope.nvim' }
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
