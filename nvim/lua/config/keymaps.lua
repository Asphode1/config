-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap

keymap.set("n", "x", '"_x')
keymap.set("n", "<C-z>", "<nop>")
keymap.set("n", "<M-y>", "<nop>")
keymap.set("i", "<M-y>", "<nop>")
keymap.set("n", "<S-p>", "<nop>")
keymap.set("i", "<C-l>", "<Esc>$a<cr>")
keymap.set("i", "<C-k>", "<Esc>0i<cr><Up>")
-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d')

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Move window
keymap.set("", "mh", "<C-w>h")
keymap.set("", "mk", "<C-w>k")
keymap.set("", "mj", "<C-w>j")
keymap.set("", "ml", "<C-w>l")
keymap.set("", "<leader><Right>", "<C-w>l")
keymap.set("", "<leader><Left>", "<C-w>h")
keymap.set("", "<leader><Up>", "<C-w>k")
keymap.set("", "<leader><Down>", "<C-w>j")

-- Save files
keymap.set("i", "<D-s>", "<Esc>:w<cr>")
keymap.set("n", "<D-s>", ":w<cr>")

--undo
keymap.set("i", "<C-z>", "<Esc>:u<cr>gi")
keymap.set("i", "<D-z>", "<Esc>:u<cr>gi")

-- no selection
keymap.set("n", "gh", ":noh<cr>")
keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", {})
keymap.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", {})

-- git
keymap.set("n", "gb", "<cmd>Gitsigns blame_line<cr>", { desc = "Git Blame Line" })
