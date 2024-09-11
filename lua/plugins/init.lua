-- Ensure lazy.nvim is loaded
vim.cmd([[packadd lazy.nvim]])

-- Setup lazy.nvim
require('lazy').setup({
  -- Coding
  {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function()
      require('plugins.treesitter')
    end
  },
  {
    "CopilotC-Nvim/CopilotChat.nvim",

    branch = "canary",
    event = 'BufWinEnter',
    dependencies = {
      "zbirenbaum/copilot.lua",
      "nvim-lua/plenary.nvim",
    },
    opts = {
      debug = false,
    },
    config = function()
      require('plugins.copilot')
    end
  },
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'saadparwaiz1/cmp_luasnip',
      'L3MON4D3/LuaSnip',
      'zbirenbaum/copilot-cmp'
    },
    config = function()
      require('plugins.cmp')
    end
  },
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
    },
    config = function()
      require('plugins.lspconfig')
    end
  },
  {
    "mhartington/formatter.nvim",
    config = function()
      require("plugins.formatter")
    end,
  },
  {
    'nvimdev/guard.nvim',
    dependencies = {
      "nvimdev/guard-collection",
    },
    config = function()
      require("plugins.guard")
    end
  },
  {
    'tpope/vim-surround',
  },
  {
    'terrortylor/nvim-comment',
    event = 'BufWinEnter',
    config = function()
      require('plugins.comment')
    end
  },
  {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('plugins.gitsigns')
      vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", {})
    end
  },
  {
    "kdheepak/lazygit.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require('plugins.lazygit')
      vim.keymap.set("n", "<leader>lg", "<cmd>LazyGit<CR>", {})
    end
  },
  -- Navigation
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim', 'nvim-telescope/telescope-ui-select.nvim' },
    config = function()
      require('plugins.telescope')
    end
  },
  {
    'kyazdani42/nvim-tree.lua',
    dependencies = { 'kyazdani42/nvim-web-devicons' },
    config = function()
      require('plugins.nvim-tree')
    end
  },
  {
    'romgrk/barbar.nvim',
    event = 'BufWinEnter',
    dependencies = { 'kyazdani42/nvim-web-devicons' },
    config = function()
      require('plugins.barbar')
    end
  },
  {
    'nvim-lualine/lualine.nvim',
    lazy         = false,
    prio         = 999,
    dependencies = { 'kyazdani42/nvim-web-devicons', opt = true },
    config       = function()
      require('plugins.lualine')
    end
  },
  -- Theme
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme "catppuccin"
    end
  }
})
