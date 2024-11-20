-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  config = function()
    require('neo-tree').setup {
      cmd = 'Neotree',
      keys = {
        { '\\', ':Neotree toggle<CR>', desc = 'NeoTree reveal', silent = true },
      },
      close_if_last_window = true,
      filesystem = {
        hijack_netrw_behavior = 'open_default',
        window = {
          mappings = {
            ['\\'] = 'close_window',
          },
        },
      },
      filtered_items = {
        visible = true,
        hide_dotfiles = false,
        hide_gitignored = true,
      },
    }
  end,
}
