-- Enable spell check
vim.opt.spell = false
vim.opt.spelllang = "en"
-- Toggle spell check with a keybinding (e.g., <leader>s)
vim.keymap.set("n", "<leader>s", ":set spell!<CR>", { noremap = true, silent = true })
