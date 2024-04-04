return {
  -- https://github.com/nvim-tree/nvim-tree.lua
  'nvim-tree/nvim-tree.lua',
  opts = {
    actions = {
      open_file = {
        window_picker = {
          enable = false,
        },
      },
    },
    renderer = {
      highlight_git = 'name',
      highlight_modified = 'name',
      highlight_bookmarks = 'name',
      highlight_clipboard = 'name',
      indent_markers = {
        enable = false,
      },
      icons = {
        show = {
          file = false,
          folder = false,
          folder_arrow = false,
          git = false,
          modified = false,
          diagnostics = false,
          bookmarks = false,
        },
      },
    },
    view = {
      width = 65,
      side = 'right',
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
