return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},

	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "rust_analyzer" },
			})
		end,
	},

	{
		"neovim/nvim-lspconfig",
		config = function()
			vim.diagnostic.config({
				virtual_lines = true,
				signs = true,
				update_in_insert = false,
				float = {
					border = "rounded",
					source = "if_many",
				},
			})

			-- Use our handler instead
			local capabilities = require("blink.cmp").get_lsp_capabilities()

			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			vim.keymap.set(
				"n",
				"K",
				vim.lsp.buf.hover,
				{},
				{ desc = "Get the quick hover definition for a piece of code" }
			)
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {}, { desc = "Get the definition for a piece of code" })
			vim.keymap.set(
				{ "n", "v" },
				"<leader>ca",
				vim.lsp.buf.code_action,
				{},
				{ desc = "Get a list of quick code actions" }
			)
		end,
	},
}
