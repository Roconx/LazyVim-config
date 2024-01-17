return {
  {
    "github/copilot.vim",
    -- Configure copilot.nvim, set the keymap to accept the suggestion
    config = function()
      vim.api.nvim_set_keymap("i", "§", 'copilot#Accept("\\<CR>")', { expr = true, noremap = true, silent = true })
      vim.cmd([[
        let g:copilot_no_tab_map = v:true
      ]])
    end,
  },
}
