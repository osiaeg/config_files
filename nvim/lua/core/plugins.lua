-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require("lazy").setup({
    { "ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = ...},
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
          "nvim-lua/plenary.nvim",
          "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
          "MunifTanjim/nui.nvim",
          -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        }
    },
    {"neovim/nvim-lspconfig"},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/cmp-buffer'},
    {'hrsh7th/cmp-path'},
    {'hrsh7th/cmp-cmdline'},
    {'hrsh7th/nvim-cmp'},
    {"williamboman/mason.nvim"},
    {'terrortylor/nvim-comment'},
    {'windwp/nvim-autopairs'},
    {'folke/which-key.nvim'},
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.8',
        dependencies = {'nvim-lua/plenary.nvim'}
    },
    {
        'akinsho/bufferline.nvim', 
        version = "*", 
        dependencies = 'nvim-tree/nvim-web-devicons'
    }
  -- -- Configure any other settings here. See the documentation for more details.
  -- -- colorscheme that will be used when installing plugins.
  -- install = { colorscheme = { "habamax" } },
  -- -- automatically check for plugin updates
  -- checker = { enabled = true },
})
