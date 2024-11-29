return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        transparent_background = true,
        flavour = "frappe",
        dim_inactive = {
          enabled = true,
          shade = "dark",
          percentage = 0.15,
        },
        intergations = {
          mason = false,
        },
        color_overrides = {
          all = {
            mantle = "#1E1E1E",
          }
        }
      })
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
