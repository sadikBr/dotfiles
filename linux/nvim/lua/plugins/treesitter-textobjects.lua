return {
	'nvim-treesitter/nvim-treesitter-textobjects',
	dependencies = {
		'nvim-treesitter/nvim-treesitter',
	},
	init = function()
		local configs = require('nvim-treesitter.configs')

		configs.setup({
			textobjects = {
				select = {
					enable = true,
					lookahead = true,
					keymaps = {
						['af'] = { query = '@function.outer', desc = 'Select outer part of a function' },
						['if'] = { query = '@function.inner', desc = 'Select inner part of a function' },
						['ac'] = { query = '@class.outer', desc = 'Select outer part of a class' },
						['ic'] = { query = '@class.inner', desc = 'Select inner part of a class' },
						['as'] = { query = '@local.scope', query_group='locals', desc = 'Select language scope' },
						['aC'] = { query = '@comment.outer', desc = 'Select outer part of a comment' },
					},
					selection_modes = {
						['@parameter.outer'] = 'v',
						['@function.outer'] = 'V',
						['@class.outer'] = '<c-v>',
					},
					include_surrounding_whitespace = true,
				},
				swap = {
					enable = true,
					swap_next = {
						['<leader>a'] = { query = '@parameter.inner', desc = 'Swap the parameter with the next one' },
					},
					swap_previous = {
						['<leader>A'] = { query = '@parameter.inner', desc = 'Swap the parameter with the previous one' },
					},
					move = {
						enable = false, -- Enable this is you find the need to it.
					},
				},
			},
		})
	end
}
