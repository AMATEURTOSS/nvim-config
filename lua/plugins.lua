vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- theme
  use {'rose-pine/neovim', as = 'rose-pine'}
  use {'catppuccin/nvim', as = 'catppuccin'}

  -- lualine footer theme
  use {'nvim-lualine/lualine.nvim', requires = {'kyazdani42/nvim-web-devicons', opt = true}}

  -- nvim tree
  use {'nvim-tree/nvim-tree.lua', requires = {'nvim-tree/nvim-web-devicons'}}

  -- telescope 파일탐색기
  use {'nvim-telescope/telescope.nvim', tag = '0.1.6',requires = {{'nvim-lua/plenary.nvim', 'nvim-tree/nvim-web-devicons'}}}

  -- lsp
  use {'neovim/nvim-lspconfig'}

  -- lsp 패키지 매니저
  use {'williamboman/mason.nvim'}

  -- autocomplete 관련 셋업
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
end)
