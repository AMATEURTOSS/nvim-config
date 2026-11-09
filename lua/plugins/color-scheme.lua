return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      transparent_background = true,
      float = { transparent = true }, -- 플로팅 창(NormalFloat)도 투명하게
      integrations = { snacks = { enabled = true } },
      custom_highlights = function(colors)
        -- Snacks picker 모달 배경 투명 처리 (테두리는 구분되게 색만 유지)
        return {
          SnacksPickerBorder = { fg = colors.surface2, bg = "NONE" },
          SnacksPickerBoxBorder = { fg = colors.surface2, bg = "NONE" },
          SnacksPickerInputBorder = { fg = colors.surface2, bg = "NONE" },
          SnacksPickerListBorder = { fg = colors.surface2, bg = "NONE" },
          SnacksPickerPreviewBorder = { fg = colors.surface2, bg = "NONE" },
        }
      end,
    })
    vim.cmd.colorscheme("catppuccin-frappe")
  end,
}
