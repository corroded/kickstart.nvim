vim.defer_fn(function()
  require('nvim-treesitter.configs').setup {
    -- Add languages to be installed here that you want installed for treesitter
    ensure_installed = {
      'c',
      'cpp',
      'go',
      'lua',
      'python',
      'rust',
      'tsx',
      'javascript',
      'typescript',
      'vimdoc',
      'vim',
      'bash',
      'ruby',
      'erlang',
      'elixir',
      'eex',
      'heex',
      'html',
      'css',
      'markdown',
      'markdown_inline',
      'terraform',
    },
  }
end, 0)
