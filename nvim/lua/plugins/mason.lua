require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

require("mason-lspconfig").setup {
    ensure_installed = { 
        "gopls", 
        "pyright",
        "ruff",
        "rust_analyzer"
    },
    automatic_installation = true,
}
