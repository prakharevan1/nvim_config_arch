vim.keymap.set(
	"n",
	"<leader>z",
	":lua require('snacks').zen()<CR>", -- Zen mode toggle
	{ noremap = true, silent = true, desc = "Toggle zen mode for focused coding." }
)
