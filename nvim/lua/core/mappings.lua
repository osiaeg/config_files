-- Поменять на Ctrl
vim.g.mapleader = "\\"

-- NeoTree
vim.keymap.set('n', '<leader>n', ':Neotree float focus <Enter>')
vim.keymap.set('n', '<leader>g', ':Neotree float git_status <Enter>')
vim.keymap.set('n', '<leader>t', ':ToggleTerm dir=./ direction=float name=term<Enter>')


 
