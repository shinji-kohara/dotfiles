-- lua/config/lsp.lua
local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("mason").setup()
require("mason-lspconfig").setup {
  ensure_installed = { "pyright" },
}

lspconfig.pyright.setup {
  capabilities = capabilities,
}

require("lspconfig").dartls.setup({
  cmd = { "dart", "language-server", "--protocol=lsp" },
  filetypes = { "dart" },
  root_dir = require("lspconfig").util.root_pattern("pubspec.yaml"),
})
