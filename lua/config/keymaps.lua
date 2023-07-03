-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local bf_manager_ui = require("buffer_manager.ui")

vim.keymap.set("n", "<leader>fw", "<cmd>Telescope tailiscope<cr>")
vim.keymap.set("n", "<leader>fa", "<cmd>Telescope adjacent<cr>")
vim.keymap.set("n", "<leader>fo", "<cmd>:Other<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>fB", function()
  bf_manager_ui.toggle_quick_menu()
end, { noremap = true, silent = true, desc = "Manage buffers" })
