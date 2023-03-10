vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- theme
  use{'rose-pine/neovim', as = 'rose-pine'}

  -- lualine footer theme
  use {'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true }}

  -- startup screen theme
  use {'glepnir/dashboard-nvim'}

  -- nvim tree
  use {'nvim-tree/nvim-tree.lua', requires = {'nvim-tree/nvim-web-devicons'}, tag = 'nightly'}

  -- telescope file explorer
  use {'nvim-telescope/telescope.nvim', tag = '0.1.0',requires = {{'nvim-lua/plenary.nvim', 'nvim-tree/nvim-web-devicons'}}}

  -- coc lsp
  use {'neoclide/coc.nvim', branch = 'release'}
end)
