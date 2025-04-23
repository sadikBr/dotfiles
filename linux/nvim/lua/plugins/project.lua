if true then 
return {}
end

return {
	'ahmedkhalf/project.nvim',
	init = function()
		require('project_nvim').setup({})
	end
}
