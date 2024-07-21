-- Setup language servers.
local lspconfig = require('lspconfig')
lspconfig.jedi_language_server.setup{}
lspconfig.gopls.setup{}
lspconfig.bashls.setup{}

-- Global mapping
