return {
  "nvim-telescope/telescope.nvim",
  branch = "master",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "파일 찾기" })
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "텍스트 찾기" })
    vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "열린 파일 전환" })
    vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "도움말 검색" })
  end,
}
