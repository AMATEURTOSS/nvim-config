-- 팔레트: Ghostty 터미널(배경 #252c3a, ANSI 팔레트)에서 뽑아 catppuccin 이름에 매핑.
-- 주조색은 teal(연못 물), 보조색은 yellow(연꽃). 나머지 색은 의미(오류/성공 등)에만 쓴다.
local palette = {
  -- 바탕: 터미널 배경과 같은 계열 (투명 배경이라 base는 플로팅/상태줄에서만 보임)
  base = "#252c3a",
  mantle = "#1f2531",
  crust = "#1a1f2a",
  surface0 = "#2f3a42", -- ANSI 0
  surface1 = "#3f5361", -- ANSI 8
  surface2 = "#4d6272",
  overlay0 = "#6d8295", -- 주석
  overlay1 = "#7a8e9b",
  overlay2 = "#96a8b3",
  subtext0 = "#b4c2cb",
  subtext1 = "#d9e2e8", -- ANSI 7
  text = "#e2e2e2", -- 터미널 foreground
  -- 강조색: 터미널 밝은 ANSI 계열
  red = "#e8776b",
  maroon = "#d98a80",
  peach = "#e2a15f",
  yellow = "#dfbf6a", -- ANSI 11
  green = "#6fb574", -- ANSI 10
  teal = "#73c5c6", -- ANSI 6
  sky = "#7cdadc", -- ANSI 14
  sapphire = "#64b5d9",
  blue = "#61aee9", -- ANSI 12
  lavender = "#9bb4e8",
  mauve = "#cc7fe0", -- ANSI 13
  pink = "#d889b8",
  flamingo = "#e0a0a0",
  rosewater = "#e6c4bd",
}

return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      transparent_background = true,
      float = { transparent = true }, -- 플로팅 창(NormalFloat)도 투명하게
      integrations = { snacks = { enabled = true } },
      color_overrides = { frappe = palette },
      custom_highlights = function(colors)
        return {
          -- 대시보드: teal(아이콘, 강조 숫자) + yellow(단축키) 두 색만 사용
          SnacksDashboardIcon = { fg = colors.teal, bold = true },
          SnacksDashboardSpecial = { fg = colors.teal },
          SnacksDashboardKey = { fg = colors.yellow },
          SnacksDashboardDesc = { fg = colors.subtext1 },
          SnacksDashboardFooter = { fg = colors.overlay2, italic = true },
          -- Snacks picker 모달 배경 투명 처리 (테두리는 구분되게 색만 유지)
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
