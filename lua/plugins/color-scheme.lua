return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      transparent_background = true,
      float = { transparent = true }, -- 플로팅 창(NormalFloat)도 투명하게
      custom_highlights = function(colors)
        -- Telescope 모달 배경 투명 처리 (테두리/프롬프트는 구분되게 색만 유지)
        return {
          TelescopeNormal = { bg = "NONE" },
          TelescopeBorder = { fg = colors.surface2, bg = "NONE" },
          TelescopePromptNormal = { bg = "NONE" },
          TelescopePromptBorder = { fg = colors.surface2, bg = "NONE" },
          TelescopeResultsNormal = { bg = "NONE" },
          TelescopeResultsBorder = { fg = colors.surface2, bg = "NONE" },
          TelescopePreviewNormal = { bg = "NONE" },
          TelescopePreviewBorder = { fg = colors.surface2, bg = "NONE" },
        }
      end,
    })
    vim.cmd.colorscheme("catppuccin-frappe")
  end,
}
