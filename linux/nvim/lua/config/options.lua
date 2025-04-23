vim.opt.expandtab = true -- Convert tabs to spaces
vim.opt.shiftwidth = 2 -- Amout to indent when using << and >>
vim.opt.tabstop = 2 -- How many spaces are shown per tab
vim.opt.softtabstop = 2 -- How many spaces are applied when pressing tab

vim.opt.smarttab = true
vim.opt.smartindent = true
vim.opt.autoindent = true -- keep indentation from previous line

-- Always show relative line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Show line under cursor
vim.opt.cursorline = true

-- Store undos between sessions
vim.opt.undofile = true

-- Enable mouse mode
vim.opt.mouse = 'a'

-- Don't show the mode since it is already in the status line
vim.opt.showmode = false

-- Enable break indent
vim.opt.breakindent = true

-- Case insensitive searching
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250

-- Configure how new splits should open
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Minimum number of lines to display above and below the cursor
vim.opt.scrolloff = 10

-- Disable command line until it is needed
vim.opt.cmdheight = 0

-- Highlight text for some time after yanking
vim.api.nvim_create_autocmd('TextYankPost', {
  group = vim.api.nvim_create_augroup('YankHighlight', { clear = true }),
  pattern = '*',
  callback = function()
    vim.highlight.on_yank()
  end,
  desc = 'Highlight Yank'
})
