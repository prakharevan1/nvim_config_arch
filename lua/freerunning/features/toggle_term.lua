return {
	{
		"numToStr/FTerm.nvim",
		config = function()
			local fterm = require("FTerm")
			fterm.setup({})

			-- Fix the keymap with proper escaping for the Lua function
			vim.keymap.set(
				{ "n", "v" },
				"<leader>tt",
				":lua require('FTerm').toggle()<CR>",
				{ noremap = true, silent = true, desc = "Toggle the terminal." }
			)
			-- lazygit
			local lazygit = fterm:new({
				ft = "lazy_git",
				cmd = "lazygit",
				dimensions = {
					height = 0.9,
					width = 0.9,
				},
			})
			vim.keymap.set("n", "<leader>gl", function()
				lazygit:toggle()
			end, { desc = "toggle lazy git" })
		end,
	},
}
