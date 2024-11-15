-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.api.nvim_set_keymap(
  "n",
  "<leader>s",
  [[:%s/\<<C-r><C-w>>/<C-r><C-w>/gI<Left><Left><Left>]],
  { noremap = true, silent = true }
)
