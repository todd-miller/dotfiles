reload "user.lsp.languages.js-ts"
reload "user.lsp.languages.rust"

lvim.lsp.diagnostics.virtual_text = false

vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "jdtls" }) 

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { command = "stylua", filetypes = { "lua" } },
  { command = "shfmt", filetypes = { "sh", "zsh" } },
  { command = "rust-fmt", filetypes = { "rust" } },
  { command = "rustfmt", filetypes = { "rust" } },
  { command = "prettier", filetypes = { "typescript", "typescriptreact" } },
}

