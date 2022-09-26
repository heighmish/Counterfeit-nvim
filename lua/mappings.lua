-- [[ Basic Keymaps ]]
local opts = { noremap = true, silent = true}
-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Navigation
vim.keymap.set('n', '<leader>e', ':Lex 30<cr>')

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
--vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float) -- comment out to avoid keybind conflict
--vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist) -- not sure what these do

-- Move lines up and down
vim.keymap.set('n', '<A-j>', ':m .+1<CR>==')
vim.keymap.set('n', '<A-k>', ':m .-2<CR>==')


-- Buffer 
vim.keymap.set('n', '<S-l>', ':bn<CR>')
vim.keymap.set('n', '<S-h>', ':bp<CR>')

-- Stay in visual mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)
