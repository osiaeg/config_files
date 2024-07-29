-- Basic 
require('core.plugins')
require('core.mappings')
require('core.themes')
require('core.configs')


-- Plugins
require('plugins.neotree')
require('plugins.lsp')
require('plugins.cmp')
require('plugins.mason')
require('plugins.autopairs')
-- require('plugins.whichkey')
require('plugins.telescope')

-- Commnet Ctrl + /
require('nvim_comment').setup({
    operator_mapping = "<C-_>"
}) 

vim.keymap.set('n', '<space>f', function()
  vim.lsp.buf.format { async = true }
end, opts)
