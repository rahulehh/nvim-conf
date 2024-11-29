local vk = vim.keymap

vk.set({ "n", "i", "v" }, "<leader>ee", vim.cmd.Ex, { desc = "Enter Explore" })

vk.set({ "i", "v" }, "<leader><leader>", "<Esc>", { desc = "Escape to Normal mode" })

vk.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
vk.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
vk.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
vk.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

vk.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
vk.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
vk.set("n", "<leader>t]", "<cmd>tabn<CR>", { desc = "Go to next tab" })
vk.set("n", "<leader>t[", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
vk.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })
