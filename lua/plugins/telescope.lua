return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.6",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require("telescope.builtin")

			vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Search files" })
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live grep" })

			vim.keymap.set("n", "<leader>fbb", builtin.buffers, { desc = "Open buffers" })
			vim.keymap.set("n", "<leader>fbc", builtin.oldfiles, { desc = "Closed buffers" })

			vim.keymap.set("n", "<leader>fhh", builtin.help_tags, { desc = "Search help tags" })
			vim.keymap.set("n", "<leader>fhm", builtin.man_pages, { desc = "Search manuals" })

			vim.keymap.set("n", "<leader>dd", builtin.diagnostics, { desc = "Show diagnostics" })
			vim.keymap.set("n", "<leader>dq", builtin.quickfixhistory, { desc = "Show quickfix history" })
			vim.keymap.set("n", "<leader>dr", builtin.registers, { desc = "Browse registers" })
			vim.keymap.set("n", "<leader>dm", builtin.marks, { desc = "Browse marks" })

			vim.keymap.set("n", "<leader>lr", builtin.lsp_references, { desc = "Find lsp references" })
			vim.keymap.set("n", "<leader>ld", builtin.lsp_definitions, { desc = "Find lsp definitions" })
		end,
	},
}
