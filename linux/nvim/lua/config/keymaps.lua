vim.keymap.set("n", "-", "<cmd>Oil --float<CR>", { desc = "Open the oil file explorer" })

vim.keymap.set("n", "gl", function()
	vim.diagnostic.open_float()
end, { desc = "Open vim diagnostics floating window" })

vim.keymap.set("n", "<leader>cf", function()
	require("conform").format({ lsp_format = "fallback" })
end, { desc = "Format the current file" })
