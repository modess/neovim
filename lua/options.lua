-- Spaces, not tabs
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4

-- Disable wrapping
vim.opt.wrap = false

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Disable mouse mode
vim.opt.mouse = ''

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim.
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

-- Indent
vim.opt.breakindent = true
vim.opt.smartindent = true

-- Save undo history
vim.opt.swapfile = false
vim.opt.undofile = true
vim.opt.backup = true
vim.opt.backupdir:remove '.'

-- Search
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- Command auto complete
vim.opt.wildmode = 'longest:full,full'

-- Auto completion
vim.opt.completeopt = 'menuone,longest,preview'

-- Disable spell checking
vim.opt.spell = false

-- Ask for confirmation instead of erroring
vim.opt.confirm = true

-- Sign column
vim.opt.signcolumn = 'yes:2'

-- Ruler
vim.opt.ruler = true
vim.opt.colorcolumn = '120'

-- vim: ts=2 sts=2 sw=2 et
