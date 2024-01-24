return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      clangd = {
        capabilities = {
          offsetEncoding = { "utf-16", "utf-8" },
        },
      },
    },
  },
}
