-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Hop bindings %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
vim.api.nvim_set_keymap("", "f", "<cmd>lua require'hop'.hint_words()<cr>", {})
vim.api.nvim_set_keymap("", "F", "<cmd>lua require'hop'.hint_anywhere()<cr>", {})
-- vim.api.nvim_set_keymap("", "q", ":%s/^\\s*\\zs/\\=line('.').'\\. '/<CR>", {})
vim.api.nvim_set_keymap("", "q", ":%s/^/\\=printf('%d. ', line('.'))/<CR>", {})

-- ************************************************************************************
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Vimtex bindings %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
vim.api.nvim_set_keymap("", "<leader>vc", "<cmd>VimtexCompile<cr>", {})
-- ************************************************************************************
