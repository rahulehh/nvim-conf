return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				lua = { "stylua" },
				svelte = { "prettierd", "prettier" },
				javascript = { "prettierd", "prettier" },
				typescript = { "prettierd", "prettier" },
				javascriptreact = { "prettierd", "prettier" },
				typescriptreact = { "prettierd", "prettier" },
				vue = { "prettierd", "prettier" },
				json = { "prettierd", "prettier" },
				graphql = { "prettierd", "prettier" },
				go = { "gofmt" },
				markdown = { "prettierd", "prettier" },
				erb = { "htmlbeautifier" },
				html = { "htmlbeautifier" },
				bash = { "beautysh" },
				proto = { "buf" },
				python = { "black" },
				rust = { "rustfmt" },
				yaml = { "yamlfix" },
				toml = { "taplo" },
				css = { "prettierd", "prettier" },
				scss = { "prettierd", "prettier" },
			},
		})

		vim.keymap.set({ "n", "v" }, "<leader>fr", function()
			conform.format({
				lsp_fallback = true,
				async = false,
				timeout_ms = 500,
				stop_after_first = true,
			})
		end, { desc = "Format file or range (in visual mode)" })
	end,
}
