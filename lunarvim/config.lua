reload "user.plugins"
reload "user.options"
reload "user.keymaps"
reload "user.autocommands"
reload "user.lsp"
reload "user.smoothie"
reload "user.harpoon"
reload "user.cybu"
reload "user.surround"
-- reload "user.bookmark"

reload "Exafunction/codeium.vim"
-- reload "user.neotest"
reload "user.surround"
reload "user.bookmark"
reload "user.todo-comments"
reload "user.jaq"
reload "user.fidget"
reload "user.lab"
reload "user.git"
reload "user.zen-mode"
reload "user.inlay-hints"
reload "user.telescope"
reload "user.bqf"
-- reload "user.dial"
reload "user.dial"
reload "user.numb"
reload "user.treesitter"
reload "user.neogit"
reload "user.colorizer"
reload "user.lualine"
reload "user.scrollbar"
-- -- reload "user.zk"
-- reload "user.copilot"
-- reload "user.chatgpt"
reload "user.whichkey"
-- reload "user.neoai"
-- lvim.builtin.cmp.formatting.source_names["copilot"] = "(Copilot)"table.insert(lvim.builtin.cmp.sources, 1, { name = "copilot" })

-- write a function that counts to 10

-- lvim.builtin.which_key.mappings["P"] = {
--   name = "Python",
--   i = { "<cmd>lua require('swenv.api').pick_venv()<cr>", "Pick Env" },
--   d = { "<cmd>lua require('swenv.api').get_current_venv()<cr>", "Show Env" },
-- }
reload "user.neoai"
-- lvim.builtin.cmp.formatting.source_names["copilot"] = "(Copilot)"table.insert(lvim.builtin.cmp.sources, 1, { name = "copilot" })

local opts = { noremap = true, silent = true }
-- For the description on keymaps, I have a function getOptions(desc) which returns noremap=true, silent=true and desc=desc. Then call: keymap(mode, keymap, command, getOptions("some randome desc")

local keymap = vim.keymap.set

keymap("n", "<left>", "<C-w>h", opts)
keymap("n", "<down>", "<C-w>j", opts)
keymap("n", "<up>", "<C-w>k", opts)
keymap("n", "<right>", "<C-w>l", opts)

keymap("n", "<m-h>", "<C-w>h", opts)
keymap("n", "<m-j>", "<C-w>j", opts)
keymap("n", "<m-k>", "<C-w>k", opts)
keymap("n", "<m-l>", "<C-w>l", opts)
keymap("n", "<m-tab>", "<c-6>", opts)
