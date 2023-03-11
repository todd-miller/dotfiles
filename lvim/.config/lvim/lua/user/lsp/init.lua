-- lsp
local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  { command = "eslint", filetypes = { "typescript", "typescriptreact" } }
}

vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "jdtls" })

local formatters = require "lvim.lsp.null-ls.formatters"
lvim.lsp.diagnostics.virtual_text = false

formatters.setup {
  { command = "stylua",   filetypes = { "lua" } },
  { command = "shfmt",    filetypes = { "sh", "zsh" } },
  -- { command = "rust-fmt", filetypes = { "rust" } },
  { command = "rustfmt",  filetypes = { "rust" } },
  { command = "prettier", filetypes = { "typescript", "typescriptreact" } },
}


