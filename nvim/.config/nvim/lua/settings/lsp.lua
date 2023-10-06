local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(_, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp.default_keymaps({buffer = bufnr})
end)

require('lspconfig').pyright.setup({
	settings = {
		python = {
			pythonPath="/home/todd/.pyenv/shims/python"
		}
	}
})
lsp.setup()
