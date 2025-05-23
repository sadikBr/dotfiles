return {
  'stevearc/oil.nvim',
  dependencies = { { 'echasnovski/mini.icons', opts = {} } },
  lazy = false,
  config = function()
    require('oil').setup {
      opts = {
        view_options = {
          show_hidden = true,
        },
      },
      skip_confirm_for_simple_edits = true,
    }
  end,
}
