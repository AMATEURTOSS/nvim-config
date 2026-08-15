return {
  "MeanderingProgrammer/render-markdown.nvim",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons", -- 아이콘 쓰려면 필요, 없으면 주석 처리
  },
  ft = { "markdown", "md" }, -- 마크다운 파일 열 때만 로드
  opts = {
    -- 기본 설정으로 충분하지만 필요하면 여기서 커스터마이징
    heading = {
      enabled = true,
      sign = true,
    },
    code = {
      enabled = true,
      style = "full", -- "full" | "normal" | "language"
    },
    bullet = {
      enabled = true,
    },
    checkbox = {
      enabled = true,
    },
  },
}
