return {
	"folke/noice.nvim",
	config = function()
		require("noice").setup({
			-- Disable notifications, messages, etc.
			lsp = {
				progress = { enabled = false }, -- Disable LSP progress notifications
				signature = { enabled = false }, -- Disable LSP signature help
				hover = { enabled = false }, -- Disable LSP hover docs
			},
			messages = {
				enabled = false, -- Disable all messages
			},
			popupmenu = {
				enabled = false, -- Disable popup menu
			},
			cmdline = {
				enabled = true, -- Enable the command line UI
				format = {
					search_down = { icon = "🔍", kind = "search" }, -- Customize search UI format
					search_up = { icon = "🔍", kind = "search" },
					help = { icon = "⚙️", kind = "help" },
				},
			},
			-- Further customization for command-line UI:
			cmdline_popup = {
				enabled = true, -- Enable cmdline popup
				format = {
					-- Customize command line formatting
					search_down = { icon = "🔍", kind = "search" },
					search_up = { icon = "🔍", kind = "search" },
				},
			},
			-- Disable other non-UI features
			notify = {
				enabled = false, -- Disable notifications (you can also selectively enable them if needed)
			},
		})
	end,
}
