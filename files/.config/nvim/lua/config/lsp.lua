-- lua/config/lsp.lua
require("mason").setup()
require("mason-lspconfig").setup {
  ensure_installed = { "pyright" },
}

vim.lsp.config.pyright = {
  cmd = { 'pyright-langserver', '--stdio' },
  filetypes = { 'python' },
  root_markers = { 'pyproject.toml', 'setup.py', 'setup.cfg', 'requirements.txt', 'Pipfile' },
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "basic"
      }
    }
  }
}

vim.lsp.config.dartls = {
  cmd = { 'dart', 'language-server', '--protocol=lsp' },
  filetypes = { 'dart' },
  root_markers = { 'pubspec.yaml', '.git' },
  settings = {
    dart = {
      completeFunctionCalls = true,
      showTodos = true
    }
  },
  init_option = {
    onlyAnalyzeProjectsWithOpenFiles = true,
    suggestFromUnimportedLibraries = true,
    closingLabels = true
  }
}

vim.lsp.enable('dartls')
