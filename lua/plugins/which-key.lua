return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    preset = "modern",
    delay = 500,
  },
  config = function(_, opts)
    local wk = require("which-key")
    wk.setup(opts)

    -- 키 그룹 레이블 설정
    wk.add({
      { "<leader>f", group = "파일 찾기" },
      { "<leader>?", desc = "로컬 키맵 보기" },
    })
  end,
}
