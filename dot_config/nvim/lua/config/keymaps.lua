-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Hop bindings %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
vim.api.nvim_set_keymap("", "f", "<cmd>lua require'hop'.hint_words()<cr>", {})
vim.api.nvim_set_keymap("", "F", "<cmd>lua require'hop'.hint_anywhere()<cr>", {})
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
