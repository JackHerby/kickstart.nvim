return {
  'tpope/vim-fugitive',
  event = 'VeryLazy',
  config = function()
    local keymap = vim.keymap
    keymap.set('n', '<leader>fc', ':Gdiffsplit!<CR>')
    keymap.set('n', '<leader>fs', ':Gdiffsplit<CR>')
    keymap.set('n', 'fh', 'do')
    keymap.set('n', 'fl', 'dp')
    keymap.set('n', 'f]', ']c') -- next diff hunk
    keymap.set('n', 'f[', '[c') -- previous diff hunk
    keymap.set('n', '<leader>fw', ':Gw!<Cr>')
    keymap.set('n', '<leader>fg', vim.cmd.Git)
    keymap.set('n', '<leader>fb', ':G blame<CR>')
  end,
}
