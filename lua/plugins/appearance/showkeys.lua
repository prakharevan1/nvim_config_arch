return {
	"nvzone/showkeys",
	config = function()
		vim.api.nvim_create_user_command("ShowkeysToggle", function()
			require("showkeys").toggle()
		end, { desc = "Toggle showkeys" })
	end,
}
