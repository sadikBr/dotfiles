vim.keymap.set('n', '-', '<cmd>Oil --float<CR>', { desc='Open the oil file explorer' })
vim.keymap.set('n', 'gl', function() vim.diagnostic.open_float() end, { desc = 'Open vim diagnostics floating window' })
