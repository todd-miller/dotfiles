-- lsp
local lspconfig = require "lsp.config"
local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  {
    command = "eslint",
    filetypes = { "typescript", "typescriptreact" }
  },
}

vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "jdtls" })

local formatters = require "lvim.lsp.null-ls.formatters"
vim.diagnostic.config({ virtual_text = false })

formatters.setup {
  { command = "stylua",   filetypes = { "lua" } },
  { command = "shfmt",    filetypes = { "sh", "zsh" } },
  { command = "rustfmt",  filetypes = { "rust" } },
  { command = "prettier", filetypes = { "typescript", "typescriptreact" } },
}

