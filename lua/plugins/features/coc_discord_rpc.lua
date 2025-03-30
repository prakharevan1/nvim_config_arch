return {
	{
		"coc-discord-rpc",
		dir = "/home/evandagur/.config/custom_plugs_nvim/coc-discord-rpc",
		config = function()
			local path = "/tmp"

			vim.g.discord_rpc_prefix = path

			-- Additional configuration for the plugin can be added here if needed.
		end,
	},
}
