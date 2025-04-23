return {
	'ibhagwan/fzf-lua',
	dependencies = {
		'echasnovski/mini.icons',
	},
	opts = {},
	keys = {
		{ '<leader>ff', function() require('fzf-lua').files() end, desc = 'Find Files in CWD' },
		{ '<leader>fg', function() require('fzf-lua').live_grep() end, desc = 'Find by grepping CWD' },
		{ '<leader>fc', function() require('fzf-lua').files({ cwd = vim.fn.stdpath('config') }) end, desc = 'Find in nvim configuration' },
		{ '<leader>fh', function() require('fzf-lua').helptags() end, desc = 'Find help tags' },
		{ '<leader>fk', function() require('fzf-lua').keymaps() end, desc = 'Find keymaps' },
		{ '<leader>fb', function() require('fzf-lua').builtin() end, desc = 'Find Builtin FZF' },
		{ '<leader>fw', function() require('fzf-lua').grep_cword() end, desc = 'Find current word' },
		{ '<leader>fW', function() require('fzf-lua').grep_cWORD() end, desc = 'Find current WORD' },
		{ '<leader>fd', function() require('fzf-lua').diagnostics_document() end, desc = 'Find diagnostics' },
		{ '<leader>fr', function() require('fzf-lua').resume() end, desc = 'Find resume' },
		{ '<leader>fo', function() require('fzf-lua').oldfiles() end, desc = 'Find old files' },
		{ '<leader><leader>', function() require('fzf-lua').buffers() end, desc = 'Find current open buffers' },
		{ '<leader>/', function() require('fzf-lua').lgrep_curbuf() end, desc = 'Live grep current buffer' },
	}
}
