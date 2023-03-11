lvim.builtin.which_key.mappings["z"] = {
  name = "NEW SECTION",
  v = { "<cmd>vsplit<cr>", "Vertical Split" },
  h = { "<cmd>split<cr>", "Horizontal Split" },
}
lvim.builtin.which_key.mappings["W"] = {
  name = "Window",
  v = { "<cmd>vsplit<cr>", "Vertical Split" },
  h = { "<cmd>split<cr>", "Horizontal Split" },
  c = { "<cmd>quit<cr>", "Close Window" },
}

lvim.builtin.which_key.mappings["f"] = {
  name = "Telescope",
  f = { "<cmd>Telescope find_files<cr>", "Find Files" },
  g = { "<cmd>Telescope live_grep<cr>", "Live Grep" },
  b = { "<cmd>Telescope buffers<cr>", "Buffers" },
  h = { "<cmd>Telescope help_tags<cr>", "Help" },
}

lvim.builtin.which_key.mappings["k"] = {
  name = "Telekasten",
  s = { "<cmd>Telekasten search_notes<cr>", "Search Notes" },
  n = { "<cmd>Telekasten new_templated_note<cr>", "New Note" },
  t = { "<cmd>Telekasten show_tags<cr>", "Show Tags" },
  d = { "<cmd>Telekasten goto_today<cr>", "Go To Today" },
  w = { "<cmd>Telekasten goto_thisweek<cr>", "Go To Week" },
  p = { "<cmd>Telekasten panel<cr>", "Panel" },
  l = { "<cmd>Telekasten follow_link<cr>", "Panel" },
}

lvim.builtin.which_key.mappings["Q"] = {
  "<cmd>quit<cr>", "Quit Pane"
}

lvim.builtin.which_key.mappings["|"] = {
  "<cmd>vsplit<cr>", "Vertical Pane"
}
lvim.builtin.which_key.mappings["-"] = {
  "<cmd>split<cr>", "Horizontal Pane"
}

lvim.builtin.which_key.mappings["o"] = {
  name = "Harpoon",
  h = {
    "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>",
    "Harpoon",
  },
  s = {
    "<cmd>lua require('harpoon.mark').add_file()<cr>",
    "Add File",
  },
  a = {
    "<cmd>OpenHarpoonAll<cr>",
    "Open all",
  },
  k = {
    "<cmd>lua require('harpoon.ui').nav_prev()<cr>",
    "Previous",
  },
  j = { "<cmd>lua require('harpoon.ui').nav_next() <cr>", "Next" },
}
