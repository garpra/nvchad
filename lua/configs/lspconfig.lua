require("nvchad.configs.lspconfig").defaults()

local servers = {
  jsonls = {},
  bashls = {},
  html = {},
  emmet_ls = {},
  cssls = {},
  ts_ls = {},
  pyright = {
    settings = {
      python = {
        analysis = {
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

-- read :h vim.lsp.config for changing options of lsp servers
