return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local configs = require("nvim-treesitter.configs")
			configs.setup({
				ensure_installed = { "vim", "vimdoc", "c", "lua", "cpp", "javascript", "html", "typescript" },
				sync_install = false,
				highlight = {
					enable = true,
				},
				indent = { enable = true },
			})
		end,
	},
}
