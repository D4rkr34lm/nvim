vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		vim.notify("Formating ...", 2)
		require("conform").format({ bufnr = args.buf })
	end,
})
