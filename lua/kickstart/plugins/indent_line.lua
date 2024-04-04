return {
  -- https://github.com/lukas-reineke/indent-blankline.nvim
  'lukas-reineke/indent-blankline.nvim',
  event = 'VeryLazy',
  main = 'ibl',
  opts = {
    enabled = true,
    indent = {
      char = '|',
    },
  },
  config = function()
    vim.opt.list = true
    vim.opt.listchars:append 'space:⋅'
    vim.opt.listchars:append 'eol:↴'

    local highlight = {
      'LightRed',
      'LightYellow',
      'LightBlue',
      'LightGray',
      'LightGreen',
      'LightMagenta',
      'LightCyan',
    }

    local hooks = require 'ibl.hooks'
    -- create the highlight groups in the highlight setup hook, so they are reset
    -- every time the colorscheme changes
    hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
      vim.api.nvim_set_hl(0, 'LightRed', { fg = '#fb4934' })
      vim.api.nvim_set_hl(0, 'LightYellow', { fg = '#fabd2d' })
      vim.api.nvim_set_hl(0, 'LightBlue', { fg = '#83a598' })
      vim.api.nvim_set_hl(0, 'LightGray', { fg = '#a89984' })
      vim.api.nvim_set_hl(0, 'LightGreen', { fg = '#b8bb26' })
      vim.api.nvim_set_hl(0, 'LightMagenta', { fg = '#d3869b' })
      vim.api.nvim_set_hl(0, 'LightCyan', { fg = '#8ec07c' })
    end)

    vim.g.rainbow_delimiters = { highlight = highlight }
    require('ibl').setup { scope = { highlight = highlight } }

    hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
  end,
}
