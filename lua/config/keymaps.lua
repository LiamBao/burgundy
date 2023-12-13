-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opt = { noremap = true, silent = true }

-- insert mode
-- { '<C-h>', '<Bs>', opts(noremap) } ,
--{ '<C-e>', '<End>', opts(noremap) },
--{ '<C-b>', '<Left>', opts(noremap) }
keymap.set("i", "jj", "<Esc>", opt)
keymap.set("i", "<C-c>", "<C-o>o", opt)
keymap.set("i", "<C-i>", "<C-o>A", opt)
--
keymap.set("n", "gh", "^", opt)
keymap.set("n", "gl", "$", opt)

--Vertical Movement /Horizontal Movement /Word Movement
-- Normal-mode commands
keymap.set("n", "<A-k>", ":MoveLine(-1)<CR>", opt)
keymap.set("n", "<A-j>", ":MoveLine(1)<CR>", opt)
keymap.set("n", "<A-h>", ":MoveHChar(-1)<CR>", opt)
keymap.set("n", "<A-l>", ":MoveHChar(1)<CR>", opt)
keymap.set("n", "<leader>wf", ":MoveWord(1)<CR>", opt)
keymap.set("n", "<leader>wb", ":MoveWord(-1)<CR>", opt)

-- Visual-mode commands
keymap.set("v", "<A-j>", ":MoveBlock(1)<CR>", opt)
keymap.set("v", "<A-k>", ":MoveBlock(-1)<CR>", opt)
keymap.set("v", "<A-h>", ":MoveHBlock(-1)<CR>", opt)
keymap.set("v", "<A-l>", ":MoveHBlock(1)<CR>", opt)

-- nvim-spectre
keymap.set("n", "<leader>S", '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
  desc = "Search on current file",
})
-- keymap.set("n", "<leader>S", '<cmd>lua require("spectre").toggle()<CR>', {
--   desc = "Toggle Spectre",
-- })
-- keymap.set("n", "<leader>sp", '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
--   desc = "Search current word",
-- })
-- keymap.set("v", "<leader>sw", '<esc><cmd>lua require("spectre").open_visual()<CR>', {
--   desc = "Search current word",
-- })
