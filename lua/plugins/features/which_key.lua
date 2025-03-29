return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
	},
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Buffer Local Keymaps (which-key)",
		},
	},
	config = function()
		local wk = require("which-key")
		wk.add({
			{ "<C-u>", desc = "Scroll Up" },
			{ "<C-d>", desc = "Scroll Down" },
			{ "<C-b>", desc = "Page Up" },
			{ "<C-f>", desc = "Page Down" },
			{ "<C-y>", desc = "Scroll Up (Small)" },
			{ "<C-e>", desc = "Scroll Down (Small)" },
			{ "zt", desc = "Top Align" },
			{ "zz", desc = "Center Align" },
			{ "zb", desc = "Bottom Align" },
		}, { mode = "n" })
		vim.keymap.set(
			"n",
			"<leader>mm",
			"<cmd>:WhichKey<CR>",
			{ desc = "Display all your current keybindings with which-key." }
		)
	end,
}
