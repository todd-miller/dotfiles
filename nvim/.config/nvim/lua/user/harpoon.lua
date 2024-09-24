local harpoon = require("harpoon")

harpoon:setup()

-- basic telescope configuration
local conf = require("telescope.config").values
local function toggle_telescope(harpoon_files)
    local file_paths = {}
    for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
    end

    require("telescope.pickers").new({}, {
        prompt_title = "Harpoon",
        finder = require("telescope.finders").new_table({
            results = file_paths,
        }),
        previewer = conf.file_previewer({}),
        sorter = conf.generic_sorter({}),
    }):find()
end

vim.keymap.set("n", "<leader>ht", function() toggle_telescope(harpoon:list()) end,
  { desc = "Open harpoon window" }
)

vim.keymap.set('n', '<leader>h', '',  { desc = '[H]arpoon' })
vim.keymap.set('n', '<leader>ha', function() harpoon:list():add() end, { desc = '[H]arpoon [A]ppend' })
vim.keymap.set('n', '<leader>hl', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = '[H]arpoon [L]ist' })
vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)

