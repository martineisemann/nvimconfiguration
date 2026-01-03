return {
  -- Plugin Manager
  { "folke/lazy.nvim", version = "*" },

  -- Colorscheme
  { "ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = ...},

  -- LSP & Autocompletion
  { "neovim/nvim-lspconfig" },
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-buffer" },
  { "hrsh7th/cmp-path" },
  { "hrsh7th/cmp-cmdline" },
  { "L3MON4D3/LuaSnip", dependencies = { "saadparwaiz1/cmp_luasnip" } },
  { "williamboman/mason.nvim" },
  { "williamboman/mason-lspconfig.nvim" },
  { "windwp/nvim-autopairs" },

  -- Syntax Highlighting
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

  -- Telescope
  { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },

  -- UI (creates a good looking statusline)
  { "nvim-lualine/lualine.nvim",
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },

  -- Indentation Guides
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
}

