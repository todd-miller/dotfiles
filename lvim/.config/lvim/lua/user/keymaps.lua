
lvim.leader = "space"

lvim.keys.insert_mode["jk"] = "<ESC>"

lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"
lvim.keys.normal_mode["<C-d>"] = "<C-d>zz"
lvim.keys.normal_mode["<C-b>"] = "<C-b>zz"
lvim.keys.normal_mode["∆"] = ":m .+1<CR>=="
lvim.keys.normal_mode["˚"] = ":m .-2<CR>=="
lvim.keys.normal_mode["n"] = "nzz"
lvim.keys.normal_mode["N"] = "Nzz"

-- TODO - visual block movement mappings not working
-- k == ˚
-- lvim.keys.visual_mode["˚"] = ":m-2<CR>gv=gv"

-- j == ∆
-- lvim.keys.visual_mode["∆"] = ":m>+1<CR>gv=gv"


