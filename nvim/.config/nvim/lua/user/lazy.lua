local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

local lazy = require("lazy")

lazy.setup({
  { "folke/neodev.nvim", opts = {} },
  { 'echasnovski/mini.icons', version = false },
  -- python venv support 
  "direnv/direnv.vim",
  -- dap
  {
    'rcarriga/nvim-dap-ui',
    dependencies = {
      'mfussenegger/nvim-dap',
      'nvim-neotest/nvim-nio'
    },
    config = function()
      local dap = require('dap')
      local dapui = require('dapui')
      dapui.setup()
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      -- dap.listeners.before.event_terminated["dapui_config"] = function()
      --   dapui.close()
      -- end
      -- dap.listeners.before.event_exited["dapui_config"] = function()
      --   dapui.close()
      -- end
    end
  },
  {
    'mfussenegger/nvim-dap',
  },
  {
    'mfussenegger/nvim-dap-python',
    ft = "python",
    dependencies = {
      "mfussenegger/nvim-dap",
      "rcarriga/nvim-dap-ui"
    },
    config = function(_, opts)
      local path = "~/.virtualenvs/debugpy/bin/python"
      -- local path = "~/.pyenv/share/nvim/mason/packages/debugpy/venv/bin/python"
      require("dap-python").setup(path)
      require("dap-python").test_runner = "pytest"
    end,
  },
  -- Git related plugins
  'tpope/vim-fugitive',
  'f-person/git-blame.nvim',
  -- 'tpope/vim-rhubarb',
  {
    "kdheepak/lazygit.nvim",
    dependencies =  {
        "nvim-lua/plenary.nvim"
    },
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
    	"LazyGitFilter",
    	"LazyGitFilterCurrentFile",
    },
  },
  -- transparent background
  'xiyaowong/transparent.nvim',

  -- tmux/nvim
  "christoomey/vim-tmux-navigator",

  -- markdown preview
  'davidgranstrom/nvim-markdown-preview',

  -- simple autopairs 
  'cohama/lexima.vim',

  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',

  -- File Navigation
  {
    'stevearc/oil.nvim',
    dependencies = { "nvim-tree/nvim-web-devicons"},
  },
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    }
  },
  {
    'williamboman/mason.nvim',
    config = true,
    opts = {
      ensure_installed = {
        "debugpy"
      }
    }
  },

  -- NOTE : This is where your plugins related to LSP can be installed.
  --  The configuration is done below. Search for lspconfig to find it below.
  {
    -- LSP Configuration & Plugins
    'neovim/nvim-lspconfig',
    dependencies = {
      -- Automatically install LSPs to stdpath for neovim
      { 'williamboman/mason.nvim', config = true, },
      'williamboman/mason-lspconfig.nvim',
      'WhoisSethDaniel/mason-tool-installer.nvim',

      -- Useful status updates for LSP
      -- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
      { 'j-hui/fidget.nvim', opts = {} },

      -- Additional lua configuration, makes nvim stuff amazing!
      'folke/neodev.nvim',
    },
  },

  {
    -- Autocompletion
    'hrsh7th/nvim-cmp',
    dependencies = {
      -- Snippet Engine & its associated nvim-cmp source
      'saadparwaiz1/cmp_luasnip',

      -- Adds LSP completion capabilities
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',

      -- Adds a number of user-friendly snippets
      'rafamadriz/friendly-snippets',
    },
  },

  -- Useful plugin to show you pending keybinds.
  { 'folke/which-key.nvim', opts = {} },

  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

  {
    -- Set lualine as statusline
    'nvim-lualine/lualine.nvim',
    -- See `:help lualine.txt`
    opts = {
      options = {
        icons_enabled = false,
        theme = 'auto',
        component_separators = '|',
        section_separators = '',
      },
    },
  },

  {
    -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    opts = {},
  },
  {
    "folke/todo-comments.nvim",
    dependencies = "nvim-lua/plenary.nvim"
  },
  -- Fuzzy Finder (files, lsp, etc)
  {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'BurntSushi/ripgrep',
      -- Fuzzy Finder Algorithm which requires local dependencies to be built.
      -- Only load if `make` is available. Make sure you have the system
      -- requirements installed.
      -- {
      --   'nvim-telescope/telescope-fzf-native.nvim',
      --   -- NOTE: If you are having trouble with this installation,
      --   --       refer to the README for telescope-fzf-native for more instructions.
      --   build = 'make',
      --   cond = function()
      --     return vim.fn.executable 'make' == 1
      --   end,
      -- },
    },
  },

  {
    -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    build = ':TSUpdate',
  },

  -- Code Folding
  {
    "kevinhwang91/nvim-ufo",
    dependencies = "kevinhwang91/promise-async",
  },

  {
    'numToStr/Comment.nvim',
    opts = {
      toggler = {
        line = '<leader>/'
      },
      opleader = {
        line = '<leader>/'

      },
      extra = {
        ---Add comment on the line above
        above = '<leader>/k',
        ---Add comment on the line below
        below = '<leader>/j',
        ---Add comment at the end of line
        eol = '<leader>/a',
      }
    },
    lazy = false,
  },
}, {})




