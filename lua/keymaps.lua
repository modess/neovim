-- Clear search
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Save
vim.keymap.set('n', '<C-s>', '<cmd>w<CR>')

-- Exit insert
vim.keymap.set('i', 'ii', '<Esc>')

-- Auto center on search
vim.keymap.set('n', 'n', 'nzzzv')

-- When text is wrapped, move by terminal rows, not lines, unless a count is provided.
vim.keymap.set('n', 'j', 'v:count ? "j" : "gj"', { expr = true, silent = true })
vim.keymap.set('n', 'k', 'v:count ? "k" : "gk"', { expr = true, silent = true })

-- Keep selection when indenting
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

-- Paste without yanking
--vim.keymap.set('n', 'p', '"_dP')

-- Previous buffer
vim.keymap.set('n', '<leader><Tab>', '<C-^>')

-- Move lines up and down
vim.keymap.set('n', '<A-j>', ':m .+1<CR>==')
vim.keymap.set('n', '<A-k>', ':m .-2<CR>==')

-- Redo
vim.keymap.set('n', 'U', '<C-r>')

-- Navigation
vim.keymap.set('n', 'J', '}', { desc = 'Move to next paragraph' })
vim.keymap.set('n', 'K', '{', { desc = 'Move to previous paragraph' })
vim.keymap.set('n', 'H', '^', { desc = 'Move to beginning of line' })
vim.keymap.set('n', 'L', '$', { desc = 'Move to end of line' })

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

--  Splits
vim.keymap.set('n', '<leader>-', '<cmd>split<CR>', { desc = 'Split horizontal' })
vim.keymap.set('n', '<leader>_', '<cmd>vs<CR>', { desc = 'Split horizontal' })
vim.keymap.set('n', '<leader>=', '<C-w>=')
-- vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
-- vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
-- vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
-- vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Resize panes
vim.keymap.set('n', '<leader>z>', '<cmd>resize +10<CR>', { desc = 'Increase horizontal size' })
vim.keymap.set('n', '<leader>z<', '<cmd>resize -10<CR>', { desc = 'Decrease horizontal size' })
vim.keymap.set('n', '<leader>z-', '<cmd>vertical resize +15<CR>', { desc = 'Increase vertical size' })
vim.keymap.set('n', '<leader>z=', '<cmd>vertical resize -15<CR>', { desc = 'Decrease vertical size' })

-- Gitsigns
vim.keymap.set('n', '<leader>vn', '<cmd>Gitsigns next_hunk<CR>', { desc = 'Next hunk' })
vim.keymap.set('n', '<leader>vp', '<cmd>Gitsigns prev_hunk<CR>', { desc = 'Previous hunk' })
vim.keymap.set('n', '<leader>vr', '<cmd>Gitsigns reset_hunk<CR>', { desc = 'Reset hunk' })
vim.keymap.set('n', '<leader>va', '<cmd>Gitsigns stage_hunk<CR>', { desc = 'Stage hunk' })
vim.keymap.set('n', '<leader>vu', '<cmd>Gitsigns undo_stage_hunk<CR>', { desc = 'Undo stage hunk' })
vim.keymap.set('n', '<leader>vb', '<cmd>Gitsigns blame_line<CR>', { desc = 'Blame line' })
vim.keymap.set('n', '<leader>vP', '<cmd>Gitsigns preview_hunk<CR>', { desc = 'Preview hunk' })
vim.keymap.set('n', '<leader>vv', '<cmd>lua _lazygit_toggle()<CR>', { desc = 'Lazygit' })

-- Keep highlight
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- vim: ts=2 sts=2 sw=2 et
