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

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  { import = "nvchad.blink.lazyspec" },
  {
    "saghen/blink.cmp",
    opts = {
      enabled = function()
        local ok, result = pcall(function()
          return not vim.tbl_contains({ "markdown", "text", "gitcommit", "oil" }, vim.bo.filetype)
        end)
        return ok and result
      end,
    },
  },

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

  {
    "wakatime/vim-wakatime",
    event = "BufReadPost",
  },

  {
    "catgoose/nvim-colorizer.lua",
    event = { "BufReadPre", "BufNewFile" },
    opts = function()
      return require "configs.nvim-colorizer"
    end,
  },

  {
    "nvim-pack/nvim-spectre",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      { "<leader>sr", "<cmd>Spectre<CR>", desc = "Spectre panel" },
      {
        "<leader>sw",
        function()
          require("spectre").open_visual { select_word = true }
        end,
        mode = "n", -- tambah mode eksplisit
        desc = "Search word under cursor",
      },
      {
        "<leader>sw",
        function()
          require("spectre").open_visual()
        end,
        mode = "v",
        desc = "Search selection",
      },
      {
        "<leader>sf",
        function()
          require("spectre").open_file_search { select_word = true }
        end,
        desc = "Search in current file",
      },
    },
  },
}
