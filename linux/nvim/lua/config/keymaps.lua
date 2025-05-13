-- NOTE: [[ Basic Keymaps ]]

-- Remap the Escape action to jj
vim.keymap.set('i', 'jj', '<Esc>')

-- Vim diagnostics
vim.keymap.set('n', 'gl', function()
  vim.diagnostic.open_float()
end, { desc = 'Open vim diagnostics floating window' })

-- Oil nvim keymap
vim.keymap.set('n', '-', '<cmd>Oil --float<CR>', { desc = 'Open the oil file explorer' })

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- TIP: Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Moving Visual selection
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Harpoon keymaps
local harpoon = require 'harpoon'
harpoon.setup()

vim.keymap.set('n', '<leader>ha', function()
  harpoon:list():add()
end, { desc = 'Add the current file to the harpoon list' })
vim.keymap.set('n', '<leader>h', function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end, { desc = 'Show all the harpooned items' })
vim.keymap.set('n', '<leader>j', function()
  harpoon:list():select(1)
end, { desc = 'Select the first item in the harpoon list' })
vim.keymap.set('n', '<leader>k', function()
  harpoon:list():select(2)
end, { desc = 'Select the second item in the harpoon list' })
vim.keymap.set('n', '<leader>l', function()
  harpoon:list():select(3)
end, { desc = 'Select the third item in the harpoon list' })
vim.keymap.set('n', '<leader>;', function()
  harpoon:list():select(4)
end, { desc = 'Select the fourth item in the harpoon list' })

-- NOTE: [[ Basic Autocommands ]]

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})
