return {
	{
		"mrcjkb/rustaceanvim",
		version = "^5", -- Recommended
		lazy = false, -- This plugin is already lazy
		config = function()
			-- Cargo run
			vim.keymap.set("n", "<leader>rr", ":cd %:p:h | !cargo run<CR>", { noremap = true, silent = true })

			-- Cargo run --release
			vim.keymap.set("n", "<leader>rR", ":cd %:p:h | !cargo run --release<CR>", { noremap = true, silent = true })

			-- Cargo test
			vim.keymap.set("n", "<leader>rt", ":cd %:p:h | !cargo test<CR>", { noremap = true, silent = true })

			-- Cargo build
			vim.keymap.set("n", "<leader>rb", ":cd %:p:h | !cargo build<CR>", { noremap = true, silent = true })

			-- Cargo build --release
			vim.keymap.set(
				"n",
				"<leader>rB",
				":cd %:p:h | !cargo build --release<CR>",
				{ noremap = true, silent = true }
			)

			-- Cargo check
			vim.keymap.set("n", "<leader>rc", ":cd %:p:h | !cargo check<CR>", { noremap = true, silent = true })

			-- Cargo clippy (linting)
			vim.keymap.set("n", "<leader>rl", ":cd %:p:h | !cargo clippy<CR>", { noremap = true, silent = true })

			-- Cargo doc (open docs)
			vim.keymap.set("n", "<leader>rd", ":cd %:p:h | !cargo doc --open<CR>", { noremap = true, silent = true })
			-- Cargo clean
			vim.keymap.set("n", "<leader>ra", ":cd %:p:h | !cargo clean <CR>", { noremap = true, silent = true })
		end,
	},
}
