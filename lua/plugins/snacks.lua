return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    dashboard = { enabled = true },
    notifier = { enabled = true },      -- nvim-notify 대체
    indent = {                          -- mini.indentscope 대체
      enabled = true,
      indent = { char = "|" },
      scope = { char = "|" },
      animate = { enabled = false },
    },
    picker = { enabled = true },        -- telescope 대체
    bigfile = { enabled = true },       -- 큰 파일 열 때 무거운 기능 끄기
    quickfile = { enabled = true },     -- 파일 먼저 그린 뒤 플러그인 로드
  },
  keys = {
    { "<leader>ff", function() Snacks.picker.files() end, desc = "파일 찾기" },
    { "<leader>fg", function() Snacks.picker.grep() end, desc = "텍스트 찾기" },
    { "<leader>fb", function() Snacks.picker.buffers() end, desc = "열린 파일 전환" },
    { "<leader>fh", function() Snacks.picker.help() end, desc = "도움말 검색" },
  },
}
