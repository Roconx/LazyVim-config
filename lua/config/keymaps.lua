-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

-- Tmux
map("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", { desc = "Go to left window", remap = true })
map("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>", { desc = "Go to lower window", remap = true })
map("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>", { desc = "Go to upper window", remap = true })
map("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>", { desc = "Go to right window", remap = true })

-- Move Selection
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selection down", remap = false, silent = true })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selection up", remap = false, silent = true })

-- Disable default buffer related keymaps
local opts = { noremap = true, silent = true }

map("n", "<S-h>", "<NOP>", opts)
map("n", "<S-l>", "<NOP>", opts)
map("n", "[b", "<NOP>", opts)
map("n", "]b", "<NOP>", opts)
map("n", "<leader>bb", "<NOP>", opts)
map("n", "<leader>`", "<NOP>", opts)

-- Disable default move keymaps
map("n", "<A-j>", "<NOP>", opts)
map("n", "<A-k>", "<NOP>", opts)
map("i", "<A-j>", "<NOP>", opts)
map("i", "<A-k>", "<NOP>", opts)
map("v", "<A-j>", "<NOP>", opts)
map("v", "<A-k>", "<NOP>", opts)

-- Disable tab keymaps
map("n", "<leader><tab>l", "<NOP>", opts)
map("n", "<leader><tab>f", "<NOP>", opts)
map("n", "<leader><tab><tab>", "<NOP>", opts)
map("n", "<leader><tab>]", "<NOP>", opts)
map("n", "<leader><tab>d", "<NOP>", opts)
map("n", "<leader><tab>[", "<NOP>", opts)
