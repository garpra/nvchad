require("nvchad.configs.lspconfig").defaults()

local servers = {
  jsonls = {},
  bashls = {},
  html = {
    capabilities = {
      textDocument = {
        completion = {
          completionItem = {
            snippetSupport = false,
          },
        },
      },
    },
  },
  emmet_ls = {
    filetypes = {
      "html",
      "css",
      "scss",
      "javascriptreact",
      "typescriptreact",
    },
  },
  cssls = {},
  ts_ls = {},
  pyright = {
    settings = {
      python = {
        analysis = {
          autoSearchPaths = true,
          typeCheckingMode = "basic",
        },
      },
    },
  },
}

for name, opts in pairs(servers) do
  vim.lsp.config(name, opts)
  vim.lsp.enable(name)
end

-- if you dont want to call the enable method in the loop, just pass a table.
-- vim.lsp.enable(vim.tbl_keys(servers))
-- vim.lsp.enable({"pyright", "clangd"})

-- read :h vim.lsp.config for changing options of lsp servers
