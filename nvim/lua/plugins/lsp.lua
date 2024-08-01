-- Setup language servers.
local lspconfig = require('lspconfig')
lspconfig.gopls.setup{}
-- Ebuild lsp-server
-- lspconfig.termux_language_server.setup{}
lspconfig.pyright.setup{
}

-- Python lsp-server
lspconfig.ruff_lsp.setup{
    init_options = {
    settings = {
        format = {
            args = { 
                "--line-length=99" 
            } 
        },
        lint = {
            args = { 
                "--line-length=88",
            },
        },
    }
  }
}

-- Global mapping
