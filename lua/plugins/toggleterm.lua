return {
  'akinsho/toggleterm.nvim',
  version = "*",
  config = function()
    require("toggleterm").setup()

    vim.keymap.set({ "n", "t" }, "<leader>th", "<cmd>ToggleTerm direction=horizontal<CR>",
      { desc = "Open horizontal terminal" })
    vim.keymap.set({ "n", "t" }, "<leader>tv", "<cmd>ToggleTerm direction=vertical<CR>",
      { desc = "Open vertical terminal" })
    vim.keymap.set({ "n", "t" }, "<leader>tf", "<cmd>ToggleTerm direction=float<CR>", { desc = "Open float terminal" })
  end
}
