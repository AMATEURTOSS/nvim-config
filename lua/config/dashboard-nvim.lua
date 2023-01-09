local db = require('dashboard')

db.custom_header = {
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣤⣶⣶⣾⣿⣿⣿⣿⣷⣷⣶⣦⣤⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[⢀⣴⣶⣶⣶⣶⣶⣤⣄⣀⠀⠀⠀⠀⣀⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[⣾⣿⣿⡟⠉⠉⠉⠙⠛⠿⢿⣶⣦⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[⢹⣿⣿⡄⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⢿⣿⣿⣿⣤⠀⠀⠀⠀⠀⠀⠀]],
  [[⠈⢿⣿⣧⠀⠀⠀⠀⣰⣿⣿⣿⣿⣿⡿⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠋⠀⠀⠀⠙⢿⣿⣿⣷⡄⠀⠀⠀⠀⠀]],
  [[⠀⠘⢿⣿⣧⠀⢀⣼⣿⣿⣿⠟⠉⠀⠀⠀⠀⠀⠙⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠁⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣆⠀⠀⠀⠀]],
  [[⠀⠀⠈⢿⣿⣷⢺⣿⣿⣿⣧⣄⣄⣀⣀⠀⠀⠀⠀⠀⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⡏⠁⠀⠀⠀⠀⠀⠀⠀⣠⠾⠛⠿⣿⣿⣿⣆⠀⠀⠀]],
  [[⠀⠀⠀⠀⠻⠃⠀⠻⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀⠀⠈⠻⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀⢀⡤⠚⠁⠀⠀⠀⠈⢻⣿⣿⡆⠀⠀]],
  [[⠀⠀⠀⠀⢰⣷⡀⠀⠈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀⠈⠙⠛⠿⣿⣿⣿⣶⣀⣀⣀⡴⠋⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⠀⠀]],
  [[⠀⠀⠀⠀⣾⣿⣿⣦⠀⠀⠙⢿⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠻⣿⣿⣿⡃⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⡇⠀]],
  [[⠀⠀⠀⠀⣿⣿⣿⣿⣷⣄⠀⠀⠹⢿⣿⣿⣿⣿⣿⣿⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣿⣧⠀⠀⠀⠀⠀⣠⠶⠟⠿⣿⣿⣿⣿⡇⠀]],
  [[⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣷⣄⠀⠈⠹⢿⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣿⣤⣄⣤⠞⠁⠀⠀⠀⠘⢻⣿⣿⡇⠀]],
  [[⠀⠀⠀⠀⢿⣿⣿⣿⣿⣿⣿⣿⣶⣀⠀⠀⠙⢿⣿⣿⣿⣿⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣿⣿⣿⠁⠀⠀⠀⠀⠀⠀⢸⣿⣿⡇⠀]],
  [[⠀⠀⠀⠀⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⡄⠀⠀⠙⢿⣿⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣿⣿⣄⠀⠀⠀⠀⣀⣶⣿⣿⣿⠃⠀]],
  [[⠀⠀⠀⠀⠈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀⠘⠻⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣷⣤⣴⣾⣿⣿⣿⣿⡟⠀⠀]],
  [[⠀⠀⠀⠀⠀⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠙⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣿⣿⣿⣿⣿⡿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢻⣷⡀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⣿⡿⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠀⠀⠹⣷⡄⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⠿⣿⣿⣿⣿⣿⠟⠁⠀⠀⠀⠀⠹⣷⡀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣾⣿⣶⣄⡀⠀⠀⠙⣻⡋⠀⠀⠀⠀⠀⠀⠀⠀⣿⣧]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⡿⠿⠓⠒⠻⢿⣿⣷⣶⣤⣄⣀⣀⣀⣤⣿⣿]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠚⠛⠋⠋⠉⠁⠁⠀⠀⠀⠀⠀⠀⠈⠉⠛⠻⠿⢿⣿⣿⢿⠟⠃]],
}

db.custom_center = {
  {
    desc = "Find files                              ",
    action = "Telescope find_files",
    shortcut = "<leader>ff",
  },
  {
    desc = "Recently opened files                   ",
    action = "Telescope oldfiles",
    shortcut = "<leader>of",
  },
  {
    desc = "Search text                             ",
    action = "Telescope live_grep",
    shortcut = "<leader>lg",
  },
  {
    desc = "Open Nvim config                        ",
    action = "edit ~/.config/nvim/init.vim",
    shortcut = "<leader>cf",
  },
  {
    desc = "Open Nvim plugin list                   ",
    action = "edit ~/.config/nvim/lua/plugins.lua",
    shortcut = "Not mapped",
  },
}

db.custom_footer = {}
