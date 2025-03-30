-- Enable absolute line numbers
vim.opt.number = false
vim.opt.relativenumber = true
-- Set relative line number as orange (do this after loading theme)
vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#84379e" })
vim.api.nvim_set_hl(0, "LineNr", { fg = "#84379e" })
vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#84379e" })
