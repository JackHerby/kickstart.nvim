return {
  'tpope/vim-dadbod',
  'kristijanhusak/vim-dadbod-completion',
  {
    'kristijanhusak/vim-dadbod-ui',
    init = function()
      vim.g.db_ui_use_nerd_fonts = 1
      vim.g.db_ui_show_database_icon = 1
      vim.g.db_ui_winwidth = 65
      vim.g.db_ui_win_position = 'right'
      vim.g.db_ui_use_nvim_notify = 1
    end,
  },
}
