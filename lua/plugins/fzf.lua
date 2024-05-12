return {
	"ibhagwan/fzf-lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("fzf-lua").setup({})
    -- vim.keymap.set("n", "<leader>ca", ":FzfLua lsp_code_actions<cr>")
	end,
}
