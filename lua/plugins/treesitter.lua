local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

parser_config.nu = {
  install_info = {
    url = "https://github.com/nushell/tree-sitter-nu",
    files = { "src/parser.c" },
    branch = "main",
  },
  filetype = "nu",
}

return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "c",
        "html",
        "json",
        "lua",
        "markdown",
        "python",
        "query",
        "regex",
        "typescript",
        "vim",
        "yaml",
        "rust",
        "bash",
        "toml",
        "rust",
        "fish",
        "kdl",
        "nu", -- Include "nu" if you want to ensure it's installed
      },
    },
  },
}
