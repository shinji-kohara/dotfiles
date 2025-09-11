return {
  { "nvim-lua/plenary.nvim" },

  -- UI
  {
      "nvim-treesitter/nvim-treesitter",
      build = ":TSUpdate",
      config = function()
          require("nvim-treesitter.configs").setup({
              ensure_installed = { "python", "lua", "dart" },
              highlight = { enable = true },
              indent = { enable = true },
          })
      end,
  },
  { "nvim-lualine/lualine.nvim" },

  -- file search
  { "nvim-telescope/telescope.nvim" },

  -- Git
  { "lewis6991/gitsigns.nvim" },

  -- filer
  -- { "nvim-tree/nvim-tree.lua" },
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-tree").setup({})
    end,
  },

  -- complition
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "L3MON4D3/LuaSnip" },
  { "rafamadriz/friendly-snippets" },

  -- LSP
  { "neovim/nvim-lspconfig" },
  { "williamboman/mason.nvim", config = true },
  { "williamboman/mason-lspconfig.nvim" },
}
