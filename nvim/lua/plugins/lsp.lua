-- Setup language servers.
local lspconfig = require('lspconfig')
lspconfig.gopls.setup{}
lspconfig.rust_analyzer.setup{}
-- Ebuild lsp-server
-- lspconfig.termux_language_server.setup{}
lspconfig.pyright.setup{}
lspconfig.eslint.setup{
    filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "vue" },
}

-- Python lsp-server
lspconfig.ruff.setup{
    init_options = {
    settings = {
        format = {
            args = { 
                "--line-length=99" 
            } 
        },
        lint = {
            args = { 
                "--line-length=99",
            },
        },
    }
  }
}

-- Global mapping
