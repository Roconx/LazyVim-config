return {
  -- add gruvbox
  {
    "catppuccin/nvim",
    name = "catppuccin",
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
