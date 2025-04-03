return {
	"folke/todo-comments.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = {
		-- your configuration comes here
	},
	config = function()
		require("todo-comments").setup({})

		vim.keymap.set("n", "]t", function()
			require("todo-comments").jump_next()
		end, { desc = "Next todo comment" })

		vim.keymap.set("n", "[t", function()
			require("todo-comments").jump_prev()
		end, { desc = "Previous todo comment" })

		vim.keymap.set("n", "]t", function()
			require("todo-comments").jump_next({ keywords = { "ERROR", "WARNING", "HELP", "UH OH", "D:" } })
		end, { desc = "Next error/warning todo comment" })

		vim.keymap.set(
			"n",
			"<leader>xt<CR>",
			":Trouble todo",
			{ desc = "View all the todo's in the file with trouble.nvim" }
		)

		vim.keymap.set(
			"n",
			"<leader>ft<CR>",
			":TodoTelescope",
			{ desc = "Live grep through all the todo's with telescope." }
		)
	end,
}
