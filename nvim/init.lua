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
require('plugins.bufferline')
require('plugins.toggleterm')
require('plugins.lualine')
require('plugins.indent')
require('plugins.gitsign')

-- Commnet Ctrl + /
require('nvim_comment').setup({
    operator_mapping = "<C-_>"
}) 

