-- lsp
-- local lspconfig = require "lsp.config"
-- local linters = require "lvim.lsp.null-ls.linters"
-- linters.setup {
--   {
--     command = "eslint",
--     filetypes = { "typescript", "typescriptreact" }
--   },
-- }

-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "jdtls" })

-- local formatters = require "lvim.lsp.null-ls.formatters"
-- vim.diagnostic.config({ virtual_text = false })

-- formatters.setup {
--   { command = "stylua",   filetypes = { "lua" } },
--   { command = "black",   filetypes = { "py" } },
--   { command = "shfmt",    filetypes = { "sh", "zsh" } },
--   { command = "rustfmt",  filetypes = { "rust" } },
--   { command = "prettier", filetypes = { "typescript", "typescriptreact" } },
-- }

require("mason").setup()
require("mason-lspconfig").setup( {
  ensure_installed = { "pyright"}
})

-- automatically install python syntax highlighting
lvim.builtin.treesitter.ensure_installed = {
  "python",
}

-- setup formatting
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup { { name = "black" }, }
lvim.format_on_save.enabled = true
lvim.format_on_save.pattern = { "*.py" }

-- setup linting
local linters = require "lvim.lsp.null-ls.linters"
linters.setup { { command = "flake8", filetypes = { "python" } } }

