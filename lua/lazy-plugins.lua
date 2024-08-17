require('lazy').setup({
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically
  { 'numToStr/Comment.nvim', opts = {} },

  require 'kickstart/plugins/tokyonight',
  require 'kickstart/plugins/gitsigns',
  require 'kickstart/plugins/which-key',
  require 'kickstart/plugins/telescope',
  require 'kickstart/plugins/lspconfig',
  require 'kickstart/plugins/conform',
  require 'kickstart/plugins/cmp',
  require 'kickstart/plugins/todo-comments',
  require 'kickstart/plugins/mini',
  require 'kickstart/plugins/treesitter',

  require 'kickstart.plugins.indent_line',
  require 'kickstart.plugins.lint',
  require 'kickstart.plugins.autopairs',

  -- My own plugins
  { 'farmergreg/vim-lastplace' },
  { 'sickill/vim-pasta' },
  { 'sheerun/vim-polyglot' },
  -- {
  --   'rebelot/kanagawa.nvim',
  --   config = function()
  --     -- vim.cmd 'colorscheme kanagawa'
  --
  --     vim.cmd 'hi Visual guibg=#43326f'
  --
  --     vim.cmd 'hi HopNextKey guifg=black guibg=#00FF00'
  --
  --     vim.cmd 'hi HopNextKey guifg=black guibg=#00FF00'
  --     vim.cmd 'hi HopNextKey1 guifg=black guibg=#00dfff'
  --     vim.cmd 'hi HopNextKey2 guifg=black guibg=#2b8db3'
  --   end,
  -- },
  -- {
  --   'marko-cerovac/material.nvim',
  --   config = function()
  --     vim.g.material_style = 'deep ocean'
  --     vim.cmd 'colorscheme material'
  --   end,
  -- },
  { 'alexghergh/nvim-tmux-navigation' },
  -- {
  --   'pineapplegiant/spaceduck',
  --   config = function()
  --     vim.cmd 'colorscheme spaceduck'
  --
  --     vim.cmd 'hi Visual guibg=#43326f'
  --
  --     vim.cmd 'hi HopNextKey guifg=black guibg=#00FF00'
  --
  --     vim.cmd 'hi HopNextKey guifg=black guibg=#00FF00'
  --     vim.cmd 'hi HopNextKey1 guifg=black guibg=#00dfff'
  --     vim.cmd 'hi HopNextKey2 guifg=black guibg=#2b8db3'
  --   end,
  -- },
  {
    'christoomey/vim-tmux-navigator',
    cmd = {
      'TmuxNavigateLeft',
      'TmuxNavigateDown',
      'TmuxNavigateUp',
      'TmuxNavigateRight',
      'TmuxNavigatePrevious',
    },
    keys = {
      { '<c-h>', '<cmd><C-U>TmuxNavigateLeft<cr>' },
      { '<c-j>', '<cmd><C-U>TmuxNavigateDown<cr>' },
      { '<c-k>', '<cmd><C-U>TmuxNavigateUp<cr>' },
      { '<c-l>', '<cmd><C-U>TmuxNavigateRight<cr>' },
      { '<c-\\>', '<cmd><C-U>TmuxNavigatePrevious<cr>' },
    },
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup {}
    end,
  },
  {
    'stevearc/oil.nvim',
    opts = {},
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('oil').setup()

      vim.keymap.set('n', '-', ':Oil<cr>', { desc = 'File explorer' })
    end,
  },
  {
    'Wansmer/treesj',
    keys = { '<leader>m', '<space>Mj', '<space>Ms' },
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    config = function()
      require('treesj').setup {}
    end,
  },
  {
    'max397574/better-escape.nvim',
    config = function()
      require('better_escape').setup {
        mapping = { 'ii' },
      }
    end,
  },
  {
    'akinsho/nvim-toggleterm.lua',
    version = '*',
    config = function()
      require('toggleterm').setup {
        direction = 'float',
      }

      vim.keymap.set('n', '<C-t>', "<cmd>lua require('toggleterm').toggle()<CR>")
      vim.keymap.set('t', '<C-t>', "<cmd>lua require('toggleterm').toggle()<CR>")
      vim.keymap.set('t', 'ii', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
    end,
  },
  {
    'folke/trouble.nvim',
    opts = {}, -- for default options, refer to the configuration section for custom setup.
    cmd = 'Trouble',
    keys = {
      {
        '<leader>xx',
        '<cmd>Trouble diagnostics toggle<cr>',
        desc = 'Diagnostics (Trouble)',
      },
      {
        '<leader>xX',
        '<cmd>Trouble diagnostics toggle filter.buf=0<cr>',
        desc = 'Buffer Diagnostics (Trouble)',
      },
      {
        '<leader>cs',
        '<cmd>Trouble symbols toggle focus=false<cr>',
        desc = 'Symbols (Trouble)',
      },
      {
        '<leader>cl',
        '<cmd>Trouble lsp toggle focus=false win.position=right<cr>',
        desc = 'LSP Definitions / references / ... (Trouble)',
      },
      {
        '<leader>xL',
        '<cmd>Trouble loclist toggle<cr>',
        desc = 'Location List (Trouble)',
      },
      {
        '<leader>xQ',
        '<cmd>Trouble qflist toggle<cr>',
        desc = 'Quickfix List (Trouble)',
      },
    },
  },
  {
    'janko/vim-test',
    config = function()
      vim.keymap.set('n', '<leader>tn', ':TestNearest<cr>', { desc = 'Test nearest' })
      vim.keymap.set('n', '<leader>tf', ':TestFile<cr>', { desc = 'Test file' })
      vim.keymap.set('n', '<leader>ts', ':TestSuite<cr>', { desc = 'Test suite' })
      vim.keymap.set('n', '<leader>tt', ':TestLast<cr>', { desc = 'Test last' })
      vim.keymap.set('n', '<leader>tv', ':TestVisit<cr>', { desc = 'Test visit' })
    end,
  },
  {
    'smoka7/hop.nvim',
    version = '*',
    config = function()
      require('hop').setup()
      vim.keymap.set('n', 's', ':HopChar1<cr>', { desc = 'Hop to character' })
      vim.keymap.set('n', 'S', ':HopChar2<cr>', { desc = 'Hop to characters' })
      vim.keymap.set('n', 'm', ':HopLineStart<cr>', { desc = 'Hop to line start' })
      vim.keymap.set('n', 'M', ':HopLine<cr>', { desc = 'Hop to line' })
      vim.keymap.set('n', '<leader>w', ':HopWord<cr>', { desc = 'Hop to word' })
    end,
  },
  {
    'linrongbin16/gitlinker.nvim',
    cmd = 'GitLink',
    opts = {},
    keys = {
      { '<leader>vy', '<cmd>GitLink<cr>', mode = { 'n', 'v' }, desc = 'Yank git link' },
      { '<leader>vo', '<cmd>GitLink!<cr>', mode = { 'n', 'v' }, desc = 'Open git link' },
      { '<leader>vb', '<cmd>GitLink blame<cr>', mode = { 'n', 'v' }, desc = 'Yank git blame link' },
      { '<leader>vB', '<cmd>GitLink!<cr>', mode = { 'n', 'v' }, desc = 'Open git blame link' },
    },
  },
  {
    'sindrets/diffview.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('diffview').setup {}
      vim.keymap.set('n', '<leader>cc', '<cmd>DiffviewOpen<cr>', { desc = 'Diffview open' })
      vim.keymap.set('n', '<leader>cq', '<cmd>DiffviewClose<cr>', { desc = 'Diffview close' })
      vim.keymap.set('n', '<leader>cr', '<cmd>DiffviewRefresh<cr>', { desc = 'Diffview refresh' })
    end,
  },
  {
    'kdheepak/lazygit.nvim',
    cmd = {
      'LazyGit',
      'LazyGitConfig',
      'LazyGitCurrentFile',
      'LazyGitFilter',
      'LazyGitFilterCurrentFile',
    },
    -- optional for floating window border decoration
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    -- setting the keybinding for LazyGit with 'keys' is recommended in
    -- order to load the plugin when the command is run for the first time
    keys = {
      { '<leader>vv', '<cmd>LazyGit<cr>', desc = 'LazyGit' },
    },
  },
  {
    'stevearc/dressing.nvim',
    opts = {},
  },
  -- {
  --   'm4xshen/hardtime.nvim',
  --   dependencies = { 'MunifTanjim/nui.nvim', 'nvim-lua/plenary.nvim' },
  --   opts = {},
  -- },
}, {
  ui = {
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})

-- vim: ts=2 sts=2 sw=2 et
