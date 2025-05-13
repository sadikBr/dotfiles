--[[

  NOTE: To see the help `:help lua-guide`, you can also use the keymap `<leader>sh`
  NOTE: To see information about vim options `:help vim.o`, `:help vim.opt`, `:help lua-options`
  NOTE: To see information about vim keymaps `:help vim.keymap.set()`
  NOTE: To see information about autocommands `:help lua-guide-autocommands`

--]]
require 'config.lazy'
require 'config.options'
require 'config.keymaps'

-- Specific to godot
if vim.fn.filereadable(vim.fn.getcwd() .. '/project.godot') == 1 then
  local addr = './godothost'
  vim.fn.serverstart(addr)
end
