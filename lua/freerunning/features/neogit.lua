return {
	"NeogitOrg/neogit",
	dependencies = {
		"nvim-lua/plenary.nvim", -- required
		"sindrets/diffview.nvim", -- optional - Diff integration

		-- Only one of these is needed.
		"nvim-telescope/telescope.nvim",
	},
	config = true,
	vim.keymap.set(
		"n",
		"<leader>gs",
		"<cmd>:Neogit cwd=%:p:h<CR>",
		{ desc = "Get the git status of the current github repository." }
	),
}
