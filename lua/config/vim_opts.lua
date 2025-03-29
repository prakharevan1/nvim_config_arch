-- tabstops, QoL, etc.
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.opt.termguicolors = true
-- Lazy load vim.version when required
vim.cmd([[autocmd VimEnter * lua require('vim.version')]])

-- keybinding for leader
vim.g.mapleader = " "

-- clipboard
vim.g.clipboard = {
	name = "win32yank-wsl",
	copy = {
		["+"] = "win32yank.exe -i --crlf",
		["*"] = "win32yank.exe -i --crlf",
	},
	paste = {
		["+"] = "win32yank.exe -o --lf",
		["*"] = "win32yank.exe -o --lf",
	},
	cache_enabled = true,
}

-- Ensure Lua 5.4 paths are prioritized
package.path = package.path .. ";/usr/local/share/lua/5.4/?.lua"
package.cpath = package.cpath .. ";/usr/local/lib/lua/5.4/?.so"
-- todo command
vim.api.nvim_create_user_command("OpenTodo", function()
	local todo_bufnr = vim.fn.bufnr("/home/evandagur/Documents/programming/todo.md")

	if vim.fn.bufexists(todo_bufnr) == 1 then
		vim.cmd("bdelete " .. todo_bufnr)
	else
		vim.cmd.vsplit()
		vim.cmd("wincmd L")
		vim.api.nvim_win_set_width(0, 45)
		vim.cmd("edit /home/evandagur/Documents/programming/todo.md")
		vim.cmd("wincmd h")
	end
end, {})

-- keybind to open this
vim.keymap.set("n", "<leader>td", ":OpenTodo<CR>", { noremap = true, silent = true })
-- automatically run showkeys
vim.api.nvim_create_autocmd("VimEnter", {
	once = true,
	callback = function()
		vim.cmd("ShowkeysToggle")
	end,
})
-- auto save command with CTRL S
vim.api.nvim_set_keymap("n", "<C-s>", ":w<CR>", {})
