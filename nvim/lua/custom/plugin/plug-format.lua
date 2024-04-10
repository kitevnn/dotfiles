return {
	{
		-- [NOTES]: the other format plugin in neovim is 'nvim-lint'
		'stevearc/conform.nvim',
		opts = {},
		config = function()
			require("conform").setup({
				vim.api.nvim_create_autocmd("BufWritePre", {
					pattern = "*",
					callback = function(args)
						require("conform").format({ bufnr = args.buf })
					end,
				}),
				format_by_ft = {
					lua = { "stylua" },
					C = { "clang_format" },
					Cpp = { "clang_format" },
				},
				format_on_save = {
					timeout_ms = 500,
					lsp_fallback = true,
				},
			})
		end,
		event = "InsertEnter",
	},
}
