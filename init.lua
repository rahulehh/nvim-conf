require("core.init")
require("plugin.init")
require("lazy_init")

--[[

Configurations for Treesitter

]]--
local configs = require("nvim-treesitter.configs")

configs.setup({
  ensure_installed = { "c", "lua", "cpp", "javascript", "html", "typescript" },
  sync_install = false,
  highlight = { enable = true },
  indent = { enable = true },  
})

--[[

Keymaps
`<leader>` means `\`

]]--
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-s>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>nt', ':Neotree filesystem reveal right<CR>', {})

require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin"
