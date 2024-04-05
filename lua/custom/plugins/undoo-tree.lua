return {
  'mbbill/undotree',
  event = 'VeryLazy',
  config = function()
    local keymap = vim.keymap
    keymap.set('n', '<leader>uu', vim.cmd.UndotreeToggle)
  end,
}
