return {
	{
		"mrcjkb/rustaceanvim",
		version = "^5", -- Recommended
		lazy = false, -- This plugin is already lazy
		config = function()
			-- Cargo run
			vim.keymap.set(
				"n",
				"<leader>rr",
				":cd %:p:h:h | !cargo run<CR>",
				{ noremap = true, silent = true },
				{ desc = "Run rust code with cargo (debug)" }
			)
			-- test commit
			-- Cargo run --release
			vim.keymap.set(
				"n",
				"<leader>rR",
				":cd %:p:h:h | !cargo run --release<CR>",
				{ noremap = true, silent = true },
				{ desc = "Run rust code with cargo (release)" }
			)

			-- Cargo test
			vim.keymap.set(
				"n",
				"<leader>rt",
				":cd %:p:h:h | !cargo test<CR>",
				{ noremap = true, silent = true },
				{ desc = "Test rust code with cargo" }
			)

			-- Cargo build
			vim.keymap.set(
				"n",
				"<leader>rb",
				":cd %:p:h:h | !cargo build<CR>",
				{ noremap = true, silent = true },
				{ desc = "Build rust code with cargo (debug)" }
			)

			-- Cargo build --release
			vim.keymap.set(
				"n",
				"<leader>rB",
				":cd %:p:h | !cargo build --release<CR>",
				{ noremap = true, silent = true }
			)

			-- Cargo check
			vim.keymap.set(
				"n",
				"<leader>rc",
				":cd %:p:h:h | !cargo check<CR>",
				{ noremap = true, silent = true },
				{ desc = "Check rust code for errors with cargo" }
			)

			-- Cargo clippy (linting)
			vim.keymap.set(
				"n",
				"<leader>rl",
				":cd %:p:h:h | !cargo clippy<CR>",
				{ noremap = true, silent = true },
				{ desc = "Use cargo clippy to provide suggestions and warnings for errors in your rust code" }
			)

			-- Cargo doc (open docs)
			vim.keymap.set(
				"n",
				"<leader>rd",
				":cd %:p:h:h | !cargo doc --open<CR>",
				{ noremap = true, silent = true },
				{ desc = "Open the rust docs with cargo to read up on documentation" }
			)
			-- Cargo clean
			vim.keymap.set(
				"n",
				"<leader>ra",
				":cd %:p:h:h | !cargo clean <CR>",
				{ noremap = true, silent = true },
				{ desc = "Clean up all of your built rust programs with cargo clean" }
			)
		end,
	},
}
