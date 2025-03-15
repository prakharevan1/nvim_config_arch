return {
	-- Custom Plugin Setup for Coc Discord RPC
	{
		-- Use the 'local' path configuration for your plugin
		"coc-discord-rpc", -- Name of the plugin, this can be anything as we're not pulling from GitHub.
		dir = "/home/evandagur/.config/custom_plugs_nvim/coc-discord-rpc", -- Use the local path for the plugin
		config = function()
			-- Plugin-specific configuration, like setting paths or other options
			local path = "/tmp" -- Static path as mentioned previously

			-- Set the prefix globally or adjust it based on plugin needs
			vim.g.discord_rpc_prefix = path -- Example setting for the path in the plugin

			-- Additional configuration for the plugin can be added here if needed.
		end,
	},
}
