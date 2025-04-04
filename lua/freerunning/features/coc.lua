return {
	"neoclide/coc.nvim",
	branch = "release", -- Install the release branch
	config = function()
		-- Coc.nvim setup if you need
		-- For example, configuring coc extensions or other settings
		vim.g.coc_global_extensions = { "coc-python", "coc-tsserver", "coc-discord-rpc" }
	end,
}
