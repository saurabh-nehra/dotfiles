return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "frappe", -- latte, frappe, macchiato, mocha
      transparent_background = true,
    },
  },
  { "LazyVim/LazyVim", opts = { colorscheme = "catppuccin" } },
}
