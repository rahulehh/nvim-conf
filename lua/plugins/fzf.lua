return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("fzf-lua").setup({})
    vim.keymap.set('n', "<leader>ca", ":FzfLua lsp_code_actions<cr>")
  end
}
