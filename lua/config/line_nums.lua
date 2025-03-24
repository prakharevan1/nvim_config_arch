-- Enable absolute line numbers
vim.opt.number = true
vim.opt.relativenumber = false
-- Set relative line number as orange (do this after loading theme)
vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "grey" })
vim.api.nvim_set_hl(0, "LineNr", { fg = "red" })
vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "grey" })
