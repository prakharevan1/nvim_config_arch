-- tabstops, QoL, etc.
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

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
