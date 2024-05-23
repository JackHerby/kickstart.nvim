return {
  -- https://github.com/nvim-tree/nvim-tree.lua
  'nvim-tree/nvim-tree.lua',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  opts = {
    disable_netrw = true,
    actions = {
      open_file = {
        window_picker = {
          enable = false,
        },
      },
    },
    view = {
      width = 65,
      side = 'right',
      number = true,
      relativenumber = true,
      cursorline = true,
    },
  },
  config = function(_, opts)
    vim.g.loaded = 1
    vim.g.loaded_netrwPlugin = 1
    require('nvim-tree').setup(opts)

    local keymap = vim.keymap
    keymap.set('n', '<leader>ee', ':NvimTreeToggle<CR>') -- toggle file explorer
    keymap.set('n', '<leader>er', ':NvimTreeFocus<CR>') -- toggle focus to file explorer
    keymap.set('n', '<leader>ef', ':NvimTreeFindFile<CR>') -- find file in file explorer
  end,
}
