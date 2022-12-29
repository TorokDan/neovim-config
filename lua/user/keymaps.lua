-- [[ Basic Keymaps ]]
-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

vim.keymap.set("i", "jj", "<ESC>")

-- Neotree mappings
vim.keymap.set("n", "<leader>f", ":Neotree focus<CR>")

-- Diagnostic keymaps
-- https://neovim.io/doc/user/diagnostic.html
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = "Go to next diagnose" })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = "Go to prev diagnose" })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = "Show diagnoscic in floating window" })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = "Add buffer diagnostics to the location list" })

-- Moving lines
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("n", "<A-j>", "<S-v> :m '>+1<CR>gv=gv <ESC>")
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<A-k>", "<S-v> :m '>-2<CR>gv=gv <ESC>")

-- Keep the cursor center when jumping
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-U>zz")
