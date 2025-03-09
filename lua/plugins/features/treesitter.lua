return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			ensure_installed = { "lua", "rust", "toml", "java", "php", "php_only" },
			-- php to avoid errors in php tsinstalls
			highlight = { enable = true },
			indent = { enable = true },
			auto_install = true,
		})
	end,
}
