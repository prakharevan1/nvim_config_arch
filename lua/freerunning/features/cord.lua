return {
	"vyfor/cord.nvim",
	build = ":Cord update",
	-- opts = {}
	config = function()
		require("cord").setup({
			-- Your configuration options go here
			text = {
				workspace = function(opts)
					local hour = tonumber(os.date("%H"))
					local status = hour >= 20 and "🌙 Late night coding"
						or hour >= 17 and "🌆 Evening session"
						or hour >= 12 and "☀️ Afternoon coding"
						or hour >= 5 and "🌅 Morning productivity"
						or "🌙 Midnight hacking"

					return string.format("%s: %s", status, opts.filename)
				end,
			},
		})
	end,
}
