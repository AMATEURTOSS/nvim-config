-- 기본 옵션 설정
vim.opt.number = true                -- 줄 번호
vim.opt.relativenumber = true        -- 상대 줄 번호
vim.opt.mouse = "a"                  -- 마우스 지원
vim.opt.clipboard = "unnamedplus"    -- 시스템 클립보드
vim.opt.expandtab = true             -- 탭을 스페이스로
vim.opt.shiftwidth = 2               -- 인덴트 크기
vim.opt.tabstop = 2                  -- 탭 크기
vim.opt.smartindent = true           -- 스마트 인덴트
vim.opt.wrap = false                 -- 줄 바꿈 비활성화
vim.opt.termguicolors = true         -- True color 지원
vim.opt.ignorecase = true            -- 검색 시 대소문자 무시
vim.opt.smartcase = true             -- 대문자 포함 시 대소문자 구분

-- lazy.nvim 불러오기
require("config.lazy")

-- Ctrl + hjkl로 창 이동
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")
