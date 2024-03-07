local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)

vim.keymap.set('n', '<leader>h', '',  { desc = '[H]arpoon' })
vim.keymap.set('n', '<leader>ha', function() harpoon.list():append() end, { desc = '[H]arpoon [A]ppend' })
vim.keymap.set('n', '<leader>hl', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = '[H]arpoon [L]ist' })
vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)

