require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- F5: compile and run C++ code in horizontal terminal
vim.api.nvim_set_keymap( 'n', '<F5>',
  [[:split | resize 15 | term g++ % -o %:r && ./%:r<CR>]],
  { noremap = true, silent = turn }
)
