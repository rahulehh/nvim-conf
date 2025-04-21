local vk = vim.keymap

vk.set({ "n", "i", "v" }, "<leader>ee", vim.cmd.Ex, { desc = "Enter Explore" })

vk.set({ "i", "v" }, "<leader><leader>", "<Esc>", { desc = "Escape to Normal mode" })

vk.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
vk.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
vk.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
vk.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

vk.set("n", "<leader>rc", "<cmd>source<CR>", { desc = "source" })

vk.set("n", "<leader>bn", "<cmd>bnext<CR>", { desc = "Next buffer" })
vk.set("n", "<leader>bv", "<cmd>bprevious<CR>", { desc = "Previous buffer" })
vk.set("n", "<leader>bx", "<cmd>bdelete<CR>", { desc = "Delete current buffer" })
vk.set("n", "<leader>ba", "<cmd>%bdelete<CR>", { desc = "Delete all buffers" })

vk.set("n", "<leader>cn", "<cmd>cnext<CR>", { desc = "Quickfix: Next item" })
vk.set("n", "<leader>cp", "<cmd>cprev<CR>", { desc = "Quickfix: Previous item" })
