-- Additional Plugins
lvim.plugins = {
  -- "olivercederborg/poimandres.nvim",
  -- "AckslD/swenv.nvim",
  -- "bluz71/vim-moonfly-colors",
  -- "ellisonleao/gruvbox.nvim",
  -- "lunarvim/onedarker.nvim",
  "LunarVim/synthwave84.nvim",
  "roobert/tailwindcss-colorizer-cmp.nvim",
  "lunarvim/github.nvim",
  -- "nvim-treesitter/playground",
  "nvim-treesitter/nvim-treesitter-textobjects",
  "christianchiarulli/nvim-ts-rainbow",
  "mfussenegger/nvim-jdtls",
  "karb94/neoscroll.nvim",
  "stevearc/dressing.nvim",
  -- "AckslD/swenv.nvim",
  "lunarvim/onedarker.nvim",
  "LunarVim/synthwave84.nvim",
  "roobert/tailwindcss-colorizer-cmp.nvim",
  "lunarvim/github.nvim",
  "nvim-treesitter/playground",
  "nvim-treesitter/nvim-treesitter-textobjects",
  "mfussenegger/nvim-jdtls",
  "opalmay/vim-smoothie",
  "j-hui/fidget.nvim",
  "christianchiarulli/nvim-ts-autotag",
  "kylechui/nvim-surround",
  -- "christianchiarulli/harpoon",
  -- "MattesGroeger/vim-bookmarks",
  "christianchiarulli/harpoon",
  "MattesGroeger/vim-bookmarks",
  "NvChad/nvim-colorizer.lua",
  "ghillb/cybu.nvim",
  "moll/vim-bbye",
  "folke/todo-comments.nvim",
  -- "windwp/nvim-spectre",
  "f-person/git-blame.nvim",
  "ruifm/gitlinker.nvim",
  "mattn/vim-gist",
  -- "mattn/webapi-vim",
  "folke/zen-mode.nvim",
  "lvimuser/lsp-inlayhints.nvim",
  "lunarvim/darkplus.nvim",
  -- "lunarvim/templeos.nvim",
  "mattn/webapi-vim",
  "folke/zen-mode.nvim",
  "lvimuser/lsp-inlayhints.nvim",
  "lunarvim/darkplus.nvim",
  "lunarvim/templeos.nvim",
  "kevinhwang91/nvim-bqf",
  "is0n/jaq-nvim",
  -- "hrsh7th/cmp-emoji",
  {
    "ggandor/leap.nvim",
    as = "leap",
    config = function()
      require("leap").add_default_mappings()
    end,
  },
  "nacro90/numb.nvim",
  "TimUntersberger/neogit",
  "sindrets/diffview.nvim",
  -- "simrat39/rust-tools.nvim",
  {
  "phaazon/hop.nvim",
  event = "BufRead",
  config = function()
    require("hop").setup()
    vim.api.nvim_set_keymap("n", "s", ":HopChar2<cr>", { silent = true })
    vim.api.nvim_set_keymap("n", "S", ":HopWord<cr>", { silent = true })
  end,
},
  "nacro90/numb.nvim",
  "TimUntersberger/neogit",
  "sindrets/diffview.nvim",
  "simrat39/rust-tools.nvim",
  "olexsmir/gopher.nvim",
  "leoluz/nvim-dap-go",
  -- "mfussenegger/nvim-dap-python",
  "jose-elias-alvarez/typescript.nvim",
  "mxsdev/nvim-dap-vscode-js",
  "petertriho/nvim-scrollbar",
  -- "renerocksai/telekasten.nvim",

  {
    'Exafunction/codeium.vim',
    config = function()
      -- Change '<C-g>' here to any keycode you like.
      vim.keymap.set('i', '<C-g>', function() return vim.fn['codeium#Accept']() end, { expr = true })
      vim.keymap.set('i', '<C-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true })
      vim.keymap.set('i', '<C-.>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true })
      vim.keymap.set('i', '<C-x>', function() return vim.fn['codeium#Clear']() end, { expr = true })
    end
  },
  -- "renerocksai/calendar-vim",
  -- {
  --   "saecki/crates.nvim",
  --   version = "v0.3.0",
  --   dependencies = { "nvim-lua/plenary.nvim" },
  --   config = function()
  --     require("crates").setup {
  --       null_ls = {
  --         enabled = true,
  --         name = "crates.nvim",
  --       },
  --     }
  --   end,
  -- },
  -- "MunifTanjim/nui.nvim",
  -- "jackMort/ChatGPT.nvim",
  -- {
  --   "jinh0/eyeliner.nvim",
  --   config = function()
  --     require("eyeliner").setup {
  --       highlight_on_key = true,
  --     }
  --   end,
  -- },
  -- { "christianchiarulli/telescope-tabs", branch = "chris" },
  -- "monaqa/dial.nvim",
  {
    "jinh0/eyeliner.nvim",
    config = function()
      require("eyeliner").setup {
        highlight_on_key = true,
      }
    end,
  },
  { "christianchiarulli/telescope-tabs", branch = "chris" },
  "monaqa/dial.nvim",
  {
    "0x100101/lab.nvim",
    build = "cd js && npm ci",
  },
  -- {
  --   "zbirenbaum/copilot.lua",
  --   -- cmd = "Copilot",
  --   event = "InsertEnter",
  -- },
  -- {
  --   "zbirenbaum/copilot-cmp",
  --   after = { "copilot.lua" },
  --   config = function()
  --     require("copilot_cmp").setup()
  --   end,
  -- },
  -- {
  --   "tzachar/cmp-tabnine",
  --   event = "InsertEnter",
  --   build = "./install.sh",
  -- },

  -- "MunifTanjim/nui.nvim",
  -- "Bryley/neoai.nvim",
  "MunifTanjim/nui.nvim",
  "Bryley/neoai.nvim",
  -- "mfussenegger/nvim-dap-python",
  -- "nvim-neotest/neotest",
  -- "nvim-neotest/neotest-python",
  -- {
  --   "folke/noice.nvim",
  --   event = "VimEnter",
  --   config = function()
  --     require("noice").setup()
  --   end,
  -- },

  -- https://github.com/jose-elias-alvarez/typescript.nvim
  -- "rmagatti/auto-session",
  -- "rmagatti/session-lens"
-- }
  "christianchiarulli/nvim-ts-rainbow",
  "karb94/neoscroll.nvim",
  {
    'Exafunction/codeium.vim',
    config = function()
      -- Change '<C-g>' here to any keycode you like.
      vim.keymap.set('i', '<C-g>', function() return vim.fn['codeium#Accept']() end, { expr = true })
      vim.keymap.set('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true })
      vim.keymap.set('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true })
      vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true })
    end
  } }
