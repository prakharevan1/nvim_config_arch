return {
	"echasnovski/mini.files",
	version = "*",
	config = function()
		local opts = {
			mappings = {
				close = "q",
				go_in = "<CR>",
				go_in_plus = "L",
				go_out = "<Esc>",
				go_out_plus = "H",
				mark_goto = "'",
				mark_set = "m",
				reset = "<BS>",
				reveal_cwd = "@",
				show_help = "g?",
				synchronize = "=",
				trim_left = "<",
				trim_right = ">",
			},
		}
		require("mini.files").setup(opts)

		vim.keymap.set("n", "<C-n>", "<cmd>:lua MiniFiles.open()<CR>", { desc = "Open current dir with mini files" })
	end,
}
