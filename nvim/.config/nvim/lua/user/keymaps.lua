vim.keymap.set({ 'n', 'v'}, '<space>', '<nop>', { silent = true })

-- escape
vim.keymap.set({ 'i' }, 'jk', '<Escape>')

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- diagnostics 
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- splits
vim.keymap.set('n', '<leader>|', ':vs<CR>', { desc = 'Vertical Split' })
vim.keymap.set('n', '<leader>-', ':split<CR>', { desc = 'Horizontal Split' })

-- highlight
vim.keymap.set('n', '<leader>H', ':noh<CR>', { desc = 'Un-[H]ighlight' })

-- git 
vim.keymap.set('n', '<leader>lg', ':LazyGit<CR>', { desc = '[L]azy-[G]it' })
vim.keymap.set('n', '<leader>gb', ':GitBlameToggle<CR>', { desc = '[G]it [B]lame Toggle' })

-- dap
vim.keymap.set('n', '<leader>tb', ':DapToggleBreakpoint<CR>', { desc = '[T]oggle [B]reakpoint' })
vim.keymap.set('n', '<leader>tc', function()
    if vim.bo.filetype == 'python' then
      require('dap-python').test_class()
    end
  end,
  { desc = '[T]est [C]lass' }
)
vim.keymap.set('n', '<leader>tm', function()
    if vim.bo.filetype == 'python' then
      require('dap-python').test_method()
    end
  end,
  { desc = '[G]it [B]lame Toggle' }
)
vim.api.nvim_create_autocmd("ColorScheme", {
	pattern = "*",
	desc = "prevent colorscheme clears self-defined DAP icon colors.",
	callback = function()
		vim.api.nvim_set_hl(0, 'DapBreakpoint', { ctermbg = 0, fg = '#993939' })
		vim.api.nvim_set_hl(0, 'DapLogPoint', { ctermbg = 0, fg = '#61afef' })
		vim.api.nvim_set_hl(0, 'DapStopped', { ctermbg = 0, fg = '#98c379' })
	end
})

vim.fn.sign_define('DapBreakpoint', { text=' ', texthl='DapBreakpoint' })
vim.fn.sign_define('DapBreakpointCondition', { text=' ﳁ', texthl='DapBreakpoint' })
vim.fn.sign_define('DapBreakpointRejected', { text=' ', texthl='DapBreakpoint' })
vim.fn.sign_define('DapLogPoint', { text=' ', texthl='DapLogPoint' })
vim.fn.sign_define('DapStopped', { text=' ', texthl='DapStopped' })


-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})


vim.keymap.set('n', "-", ":Oil<CR>")
