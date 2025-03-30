return {
	"romgrk/barbar.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
	},
	config = function()
		require("barbar").setup({})
		vim.keymap.set("n", "<leader>bb", "<cmd>BufferPrevious<CR>", { desc = "Go back a tab" })
		vim.keymap.set("n", "<leader>bf", "<cmd>BufferNext<CR>", { desc = "Go forward a tab" })
		vim.keymap.set("n", "<leader>bmf", "<cmd>BufferMoveNext<CR>", { desc = "Move your current tab forward by one" })
		vim.keymap.set(
			"n",
			"<leader>bmp",
			"<leader>BufferMovePrevious<CR>",
			{ desc = "Move your current tab back by one" }
		)
		vim.keymap.set("n", "<leader>bd", "<cmd>BufferClose<CR>", { desc = "Delete your current tab" })
	end,
}
