----- keybindings -----
local opts = { noremap = true, silent = true }
local map = vim.keymap.set
-- map leader
vim.g.mapleader = " "
-- map split keys
map("n", "<C-l>", "<C-w>l", opts)
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<Leader>v", "<C-w>v", opts)
map("n", "<Leader>s", "<C-w>s", opts)
-- intelligent k&j: https://www.reddit.com/r/vim/comments/2k4cbr/problem_with_gj_and_gk/
map("n", "j", [[v:count ? 'j' : 'gj']], { noremap = true, expr = true })
map("n", "k", [[v:count ? 'k' : 'gk']], { noremap = true, expr = true })
-- Telescope
map("n", "<Leader>[", "<C-o>", opts)
map("n", "<Leader>]", "<C-i>", opts)
-- Lsp configure
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
map('n', '<Leader>e', vim.diagnostic.open_float)
map('n', '[d', vim.diagnostic.goto_prev)
map('n', ']d', vim.diagnostic.goto_next)
map('n', '<Leader>q', vim.diagnostic.setloclist)

-- Nvim-Tree
map("n", "<Leader>m", ":NvimTreeToggle<CR>", opts)

-- Bufferline
map("n", "<Leader><Tab>", ":BufferLineCycleNext<CR>", opts)
map("n", "<Leader><S-Tab>", ":BufferLineCyclePrev<CR>", opts)
map("n", "<leader>bl", ":BufferLineCloseRight<CR>", opts)
map("n", "<leader>bh", ":BufferLineCloseLeft<CR>", opts)
map("n", "<leader>bc", ":BufferLinePickClose<CR>", opts)
