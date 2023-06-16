-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
lvim.colorscheme = "aurora"
lvim.transparent_window = true


vim.opt.relativenumber = true;
lvim.builtin.treesitter.rainbow.enable = true

lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"

-- nnoremap <F4> :Lab code stop<CR>
-- nnoremap <F5> :Lab code run<CR>
-- nnoremap <F6> :Lab code panel<CR>


lvim.keys.normal_mode["<m-4>"] = ":Lab code stop<CR>"
lvim.keys.normal_mode["<m-5>"] = ":Lab code run<CR>"
lvim.keys.normal_mode["<m-6>"] = ":Lab code panel<CR>"

lvim.plugins = {
  { "lunarvim/colorschemes" },
  {
    'stevearc/dressing.nvim',
    opts = {},
  },
  {
    "ggandor/leap.nvim",
    name = "leap",
    config = function()
      require("leap").add_default_mappings()
    end,
  },
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  {
    "JoosepAlviste/nvim-ts-context-commentstring",
    event = "BufRead",
  },
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require "lsp_signature".on_attach() end,
  },
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  {
    "norcalli/nvim-colorizer.lua",
    lazy = true,
    config = function()
      require("colorizer").setup({ "css", "scss", "html", "javascript" }, {
        RGB = true,      -- #RGB hex codes
        RRGGBB = true,   -- #RRGGBB hex codes
        RRGGBBAA = true, -- #RRGGBBAA hex codes
        rgb_fn = true,   -- CSS rgb() and rgba() functions
        hsl_fn = true,   -- CSS hsl() and hsla() functions
        css = true,      -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
        css_fn = true,   -- Enable all CSS *functions*: rgb_fn, hsl_fn
      })
    end,
  },
  -- { "catppuccin/nvim",      name = "catppuccin" },

  {
    'Exafunction/codeium.vim',
    event = "VeryLazy",
    config = function()
      -- Change '<C-g>' here to any keycode you like.
      vim.keymap.set('i', '<C-g>', function() return vim.fn['codeium#Accept']() end, { expr = true })
      vim.keymap.set('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true })
      vim.keymap.set('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true })
      vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true })
    end
  },
  -- { "ellisonleao/gruvbox.nvim" },
  { "rose-pine/neovim" },
  -- { "jnurmine/Zenburn" },
  { "XadillaX/vim-mir2-colorscheme" },
  { "sainnhe/gruvbox-material" },
  { "aktersnurra/no-clown-fiesta.nvim" },
  { "Mofiqul/dracula.nvim" },
}
