return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  ---
  opts = {
    default_file_explorer = true,
    columns = {
      'icons',
    },
    show_hidden = true,
    is_hidden_file = function(name, bufnr)
      return vim.startswith(name, '.')
    end,
  },
  -- INFO: optional dependencies
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('oil').setup()
    vim.keymap.set('n', '<leader>mF', ':Oil<CR>', { desc = 'open file tree' })
  end,
}
