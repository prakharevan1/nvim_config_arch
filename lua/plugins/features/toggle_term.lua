return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = function()
			require("toggleterm").setup({
				size = 15, -- Terminal height (horizontal) or width (vertical)
				hide_numbers = true, -- Hide line numbers in the terminal
				shade_filetypes = {}, -- No shading for specific filetypes
				shade_terminals = true, -- Apply shading to terminals
				shading_factor = 2, -- Darken terminal by this factor
				start_in_insert = true, -- Start terminal in insert mode
				persist_size = true, -- Maintain size across sessions
				direction = "vertical", -- 'vertical' | 'horizontal' | 'tab' | 'float'
				close_on_exit = true, -- Auto close terminal when process exits
				shell = vim.o.shell, -- Use the system shell
			})
			vim.keymap.set("n", "<leader>tt", "<cmd>ToggleTerm direction=horizontal<CR>", { desc = "Toggle terminal" })
		end,
	},
}
