return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = {
      "",
      "",
      "    ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗",
      "    ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║",
      "    ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║",
      "    ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║",
      "    ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║",
      "    ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝",
      "",
      "",
    }

    dashboard.section.buttons.val = {}

    local function text(val, hl)
      return {
        type = "text",
        val = val,
        opts = {
          position = "center",
          hl = hl or "Comment",
        },
      }
    end

    dashboard.config.layout = {
      { type = "padding", val = 1 },
      dashboard.section.header,
      { type = "padding", val = 2 },

      text("╭──────────────────────────────────────────────────────────────────╮", "Special"),
      text("│                                                                  │", "Special"),
      text("│   파일                              LSP                          │", "Title"),
      text("│   ────                              ───                          │", "Comment"),
      text("│   SPC f f   파일 찾기               g d      정의 이동           │", "String"),
      text("│   SPC f g   텍스트 찾기             g r      참조 찾기           │", "String"),
      text("│   SPC f b   버퍼 전환               g i      구현 이동           │", "String"),
      text("│   SPC e     파일 트리               K        문서 보기           │", "String"),
      text("│                                     SPC r n  이름 변경           │", "String"),
      text("│                                     SPC c a  코드 액션           │", "String"),
      text("│                                     g l      진단 메시지         │", "String"),
      text("│                                                                  │", "Special"),
      text("│   자동완성                          창 관리                      │", "Title"),
      text("│   ──────                            ──────                       │", "Comment"),
      text("│   C-SPC     트리거                  C-h      왼쪽으로            │", "String"),
      text("│   CR        확인                    C-j      아래로              │", "String"),
      text("│   C-b       문서 위로               C-k      위로                │", "String"),
      text("│   C-f       문서 아래로             C-l      오른쪽으로          │", "String"),
      text("│                                                                  │", "Special"),
      text("╰──────────────────────────────────────────────────────────────────╯", "Special"),

      { type = "padding", val = 2 },
    }

    alpha.setup(dashboard.config)

    vim.api.nvim_create_autocmd("VimEnter", {
      callback = function()
        if vim.fn.argc() == 0 then
          vim.cmd("Alpha")
        end
      end,
    })
  end,
}
