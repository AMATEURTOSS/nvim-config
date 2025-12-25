return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  lazy = false,
  opts = {
    ensure_installed = { "lua", "typescript", "javascript", "python", "vim", "vimdoc" },
    auto_install = true,
  },
}
