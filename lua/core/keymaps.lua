local vk = vim.keymap

-- Explore
vk.set("n", "<leader>ee", vim.cmd.Ex)

-- Alternate escape key
vk.set({ "i", "v" }, "<leader><leader>", "<Esc>")
