return {
  -- https://github.com/barrett-ruth/live-server.nvim
  "barrett-ruth/live-server.nvim",
  event = "VeryLazy",
  build = "npm install -g live-server",
  cmd = { "LiveServerStart", "LiveServerStop" },
  opts = {
    args = { "--no-browser", "--port=7000" },
  },
  config = true,
}
