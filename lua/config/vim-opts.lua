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
-- add transparency to neotree and other things, override colorscheme
vim.api.nvim_create_autocmd("ColorScheme", {
	pattern = "*",
	callback = function()
		vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
		vim.cmd("hi NormalNC guibg=NONE ctermbg=NONE")
		vim.cmd("hi EndOfBuffer guibg=NONE ctermbg=NONE")
		vim.cmd("hi NeoTreeNormal guibg=NONE ctermbg=NONE")
		vim.cmd("hi NeoTreeNormalNC guibg=NONE ctermbg=NONE")
		vim.cmd("hi NeoTreeEndOfBuffer guibg=NONE ctermbg=NONE")
	end,
})
