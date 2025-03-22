-- add transparency to neotree and other things, override colorscheme
vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
vim.cmd("hi NormalNC guibg=NONE ctermbg=NONE")
vim.cmd("hi EndOfBuffer guibg=NONE ctermbg=NONE")
vim.cmd("hi NeoTreeNormal guibg=NONE ctermbg=NONE")
vim.cmd("hi NeoTreeNormalNC guibg=NONE ctermbg=NONE")
vim.cmd("hi NeoTreeEndOfBuffer guibg=NONE ctermbg=NONE")
-- add barbar transparency
vim.api.nvim_set_hl(0, "BufferTabpageFill", { bg = "none" })
vim.api.nvim_set_hl(0, "BufferInactive", { bg = "none" })
vim.api.nvim_set_hl(0, "BufferInactiveSign", { bg = "none" })
vim.api.nvim_set_hl(0, "BufferVisible", { bg = "none" })
vim.api.nvim_set_hl(0, "BufferCurrent", { bg = "none" })
