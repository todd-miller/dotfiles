
local dap = require('dap')

dap.adapters.typescript = {
  type = 'executable',
  command = 'typescript-language-server',
  args = { '--stdio' },
  options = {
    cwd = vim.fn.getcwd(),
  },
  env = {
    TS_NODE_PROJECT = vim.fn.getcwd() .. '/tsconfig.json',
  },
}

dap.configurations.typescript = {
  {
    type = 'typescript',
    request = 'launch',
    name = 'Launch file',
    program = '${file}',
    cwd = vim.fn.getcwd(),
    sourceMaps = true,
    protocol = 'inspector',
  },
}

