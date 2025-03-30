return {
	{
		"numToStr/FTerm.nvim",
		config = function()
			require("FTerm").setup({})

			-- Fix the keymap with proper escaping for the Lua function
			vim.keymap.set(
				{ "n", "v" },
				"<leader>tt",
				":lua require('FTerm').toggle()<CR>",
				{ noremap = true, silent = true, desc = "Toggle the terminal." }
			)
		end,
	},
}
