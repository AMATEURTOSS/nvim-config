return {
  "folke/noice.nvim",
  config = function()
    require("noice").setup({
      presets = {
        command_palette = true,
      },
    })
  end,
}
