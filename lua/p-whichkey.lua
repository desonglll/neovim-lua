local wk = require("which-key")

local opts = {
  mode = "n", -- NORMAL mode
  prefix = "<leader>",
  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true, -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = true, -- use `nowait` when creating keymaps
}

local mappings = {
  [" "] = {"<leader>", "Leader"},
  ["w"] = {"<cmd>w!<CR>", "Save"},
  ["q"] = {"<cmd>q!<CR>", "Quit Without Save"},
  ["g"] = {"<cmd>lua _lazygit_toggle()<CR>", "LazyGit"},
  f = {
    name = "Find ...",
    f = {
      '<cmd>lua require("telescope.builtin").find_files({no_ignore=false,hidden=true})<cr>',
      "Find files",
    },
    g = { '<cmd>lua require("telescope.builtin").live_grep({no_ignore=false,hidden=true})<cr>', "Find Text" },
  },

  ["/"] = {
    name = "Easymotion",
    ["/"] = {"<Plug>(easymotion-sn)", "Easymotion SN"},
    ["l"] = {"<Plug>(easymotion-overwin-line)", "Easymotion Line"},
    ["w"] = {"<Plug>(easymotion-overwin-w)", "Easymotion Word"},
    c = {
      name = "Easymotion char",
      ["1"] = {"<Plug>(easymotion-overwin-f)", "Easymotion 1 char"},
      ["2"] = {"<Plug>(easymotion-overwin-f2)", "Easymotion 2 char"},
    },
  },

-- Terminal
  t = {
    name = "Terminal",
    ["t"] = {
      v = {
        "<cmd>ToggleTerm direction=vertical<CR>",
        "Vertical Terminal",
      },
      h = {
        "<cmd>ToggleTerm direction=horizontal<CR>",
        "Horizontal Terminal",
      },
    },
    g = {
      "LazyGit",
    },
  },

  -- Debug
  d = {
    name = "Debug",
    ["t"] = {
      "<cmd>Tagbar<CR>",
      "Tagbar",
    },
  },

}

wk.register(mappings, opts)
