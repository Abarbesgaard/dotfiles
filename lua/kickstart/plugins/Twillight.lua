return {
  'folke/twilight.nvim',
  opts = {},
  config = function()
    -- Set up the keybinding to toggle Twilight
    vim.api.nvim_set_keymap('n', '<leader>z', '<cmd>Twilight<CR>', { noremap = true, silent = true, desc = 'Activate zen mode' })
  end,
}
