local IMG_W, IMG_H = 40, 17 -- 대시보드 이미지 크기(칸 단위)
local IMG_SRC = vim.fn.stdpath("config") .. "/assets/si_crop.png"

return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    dashboard = {
      enabled = true,
      sections = {
        -- 이미지가 그려질 자리(점자 공백 문자로 채운 줄). 실제 이미지는 아래 init()에서 얹는다.
        {
          text = { { (" "):rep(0) .. ("\u{2800}"):rep(IMG_W) .. ("\n" .. ("\u{2800}"):rep(IMG_W)):rep(IMG_H - 1), hl = "Normal" } },
          align = "center",
          padding = 1,
        },
        { section = "keys", gap = 0, padding = 1 },
        { section = "startup" },
      },
    },
    image = { enabled = true, doc = { enabled = false } }, -- Ghostty(kitty protocol)로 이미지 출력
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
  init = function()
    local placement
    local function place()
      if placement then pcall(function() placement:close() end) placement = nil end
      local buf
      for _, b in ipairs(vim.api.nvim_list_bufs()) do
        if vim.bo[b].filetype == "snacks_dashboard" then buf = b break end
      end
      if not buf then return end
      local lines = vim.api.nvim_buf_get_lines(buf, 0, -1, false)
      local first, last, col
      for i, l in ipairs(lines) do
        local at = l:find("\u{2800}", 1, true)
        if at then
          first, col = first or i, col or (at - 1)
          last = i
        end
      end
      if not first then return end
      vim.schedule(function()
        placement = Snacks.image.placement.new(buf, IMG_SRC, {
          inline = true,
          conceal = true, -- 자리 줄 위에 겹쳐 그리기 (없으면 이미지가 아래에 가상 줄로 추가돼 레이아웃이 밀림)
          pos = { first, col },
          range = { first, col, last, col + #("\u{2800}"):rep(IMG_W) },
          width = IMG_W,
          height = IMG_H,
        })
      end)
    end
    vim.api.nvim_create_autocmd("User", { pattern = "SnacksDashboardUpdatePost", callback = place })
    vim.api.nvim_create_autocmd("User", {
      pattern = "SnacksDashboardClosed",
      callback = function()
        if placement then pcall(function() placement:close() end) placement = nil end
      end,
    })
  end,
  keys = {
    { "<leader>ff", function() Snacks.picker.files() end, desc = "파일 찾기" },
    { "<leader>fg", function() Snacks.picker.grep() end, desc = "텍스트 찾기" },
    { "<leader>fb", function() Snacks.picker.buffers() end, desc = "열린 파일 전환" },
    { "<leader>fh", function() Snacks.picker.help() end, desc = "도움말 검색" },
  },
}
