return {
  "Exafunction/codeium.vim",
  config = function()
    vim.keymap.set("i", "<C-g>", function()
      return vim.fn["codeium#Accept"]()
    end, { expr = true })
    vim.keymap.set("i", "<c-t>", function()
      return vim.fn["codeium#CycleCompletions"](1)
    end, { expr = true })
  end,
}
