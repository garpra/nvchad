return {

  -- disable default plugins
  {
    "nvim-tree/nvim-tree.lua",
    enabled = false,
  },

  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- test new blink
  { import = "nvchad.blink.lazyspec" },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "c",
        "lua",
        "vim",
        "vimdoc",
        "query",

        -- Parser
        "markdown",
        "markdown_inline",
        "bash",
        "regex",
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "python",
      },
    },
  },

  {
    "NvChad/nvcommunity",
    { import = "nvcommunity.file-explorer.oil-nvim" },
    { import = "nvcommunity.tools.telescope-fzf-native" },
    {
      "oil.nvim",
      lazy = false,
      keys = {
        { "-", "<CMD>Oil<CR>", desc = "Open explorer" },
      },
      opts = function()
        return require "configs.oil-nvim"
      end,
    },
  },
}
