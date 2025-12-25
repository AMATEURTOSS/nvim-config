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

    -- 로컬 키맵 보기 등록
    vim.keymap.set("n", "<leader>?", function()
      require("which-key").show({ global = false })
    end, { desc = "로컬 키맵 보기" })

    wk.add({
      { "<leader>f", group = "파일 찾기" },
      { "<leader>?", desc = "로컬 키맵 보기" },
      { "<leader>c", group = "코드" },
      { "<leader>r", group = "리팩토링" },
      { "g", group = "이동" },
    })
  end,
}
