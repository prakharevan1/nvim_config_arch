-- clipboard
vim.opt.clipboard = "unnamedplus"
-- copy and paste keybinding
vim.keymap.set(
	"n",
	"<leader>p",
	'"+p',
	{ noremap = true, silent = true, desc = "Paste after cursor from system clipboard" }
) -- Paste after cursor
vim.keymap.set("v", "<leader>y", '"+y', { noremap = true, silent = true, desc = "Copy to system clipboard" })
