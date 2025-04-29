return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
		config = function()
			local components = require("neo-tree.sources.common.components")

			require("neo-tree").setup({
				close_if_last_window = false,
				popup_border_style = "rounded",
				enable_git_status = true,
				enable_diagnostics = true,
				filesystem = {
					components = {
						name = function(config, node, state)
							local name = components.name(config, node, state)
							if node:get_depth() == 1 then
								---@diagnostic disable-next-line: undefined-field
								name.text = vim.fs.basename(vim.loop.cwd() or "")
							end
							return name
						end,
					},
					filtered_items = {
						visible = true,
						show_hidden_count = true,
						hide_dotfiles = false,
						hide_gitignored = true,
						hide_by_name = {
							".git",
							".DS_Store",
							"thumbs.db",
						},
						never_show = {},
					},
					window = {
						position = "right",
						mappings = {
							["<space>"] = {
								"toggle_node",
								nowait = false,
							},
							["<2-LeftMouse>"] = "open",
							["<cr>"] = "open",
							["<esc>"] = "cancel",
							["P"] = { "toggle_preview", config = { use_float = true, use_image_nvim = true } },
							["l"] = "focus_preview",
							["S"] = "open_split",
							["s"] = "open_vsplit",
							["t"] = "open_tabnew",
							["w"] = "open_with_window_picker",
							["C"] = "close_node",
							["z"] = "close_all_nodes",
							["a"] = {
								"add",
								config = {
									show_path = "relative",
								},
							},
							["A"] = "add_directory",
							["d"] = "delete",
							["r"] = "rename",
							["y"] = "copy_to_clipboard",
							["x"] = "cut_to_clipboard",
							["p"] = "paste_from_clipboard",
							["c"] = "copy",
							["m"] = "move",
							["q"] = "close_window",
							["R"] = "refresh",
							["?"] = "show_help",
							["<"] = "prev_source",
							[">"] = "next_source",
							["i"] = "show_file_details",
						},
					},
				},
			})

			vim.keymap.set("n", "<leader>[", function()
				require("neo-tree.command").execute({ toggle = true })
			end, { desc = "Toggle Neotree" })
		end,
	},
}
