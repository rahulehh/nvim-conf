--[[

Two space chararacter for ever tab space and intendation

]]--
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- Can yank to clipboard
vim.api.nvim_set_option("clipboard", "unnamed")

--[[

Lazy.nvim installation

]]--
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  { 'nvim-telescope/telescope.nvim', tag = '0.1.6', dependencies = { 'nvim-lua/plenary.nvim' } }, 
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  },
}

local opts = {}

require("lazy").setup(plugins, opts)

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
