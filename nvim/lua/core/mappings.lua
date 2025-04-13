-- Поменять на Ctrl
vim.g.mapleader = "\\"

-- NeoTree
vim.keymap.set('n', '<leader>n', ':Neotree float focus <Enter>')
vim.keymap.set('n', '<leader>g', ':Neotree float git_status <Enter>')

-- ToggleTerm
vim.keymap.set('n', '<C-t>', ':ToggleTerm direction=float name=term<Enter>')
vim.keymap.set('t', '<esc>', '<C-\\><C-n>')
vim.keymap.set('n', '<C-q>', ':bd <Enter>')

-- LSP
vim.keymap.set('n', '<leader>li', ':LspInfo <Enter>')
vim.keymap.set('n', '<leader>lf', function() vim.lsp.buf.format { async = true } end, opts)
vim.keymap.set('n', '<A-CR>', "<cmd>lua vim.lsp.buf.code_action()<CR>")

