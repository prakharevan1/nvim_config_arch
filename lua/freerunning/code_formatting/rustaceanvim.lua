return {
	{
		"mrcjkb/rustaceanvim",
		version = "^5", -- Recommended
		lazy = false, -- This plugin is already lazy
		config = function()
			-- cargo run
			vim.keymap.set(
				"n",
				"<leader>rr",
				":lua require('FTerm').scratch({ cmd = {'bash', '-c', 'cd ' .. vim.fn.fnamemodify(vim.fn.expand('%:p:h:h'), ':p') .. ' && cargo run'} })<CR>",
				{ noremap = true, silent = true, desc = "Run rust code with cargo (debug)" }
			)
			-- cargo run (release)
			vim.keymap.set(
				"n",
				"<leader>rR",
				":lua require('FTerm').scratch({ cmd = {'bash', '-c', 'cd ' .. vim.fn.fnamemodify(vim.fn.expand('%:p:h:h'), ':p') .. ' && cargo run --release'} })<CR>",
				{ noremap = true, silent = true, desc = "Run rust code with cargo (release)" }
			)
			-- cargo test
			vim.keymap.set(
				"n",
				"<leader>rt",
				":lua require('FTerm').scratch({ cmd = {'bash', '-c', 'cd ' .. vim.fn.fnamemodify(vim.fn.expand('%:p:h:h'), ':p') .. ' && cargo test'} })<CR>",
				{ noremap = true, silent = true, desc = "Test rust code with cargo" }
			)
			-- cargo build
			vim.keymap.set(
				"n",
				"<leader>rb",
				":lua require('FTerm').scratch({ cmd = {'bash', '-c', 'cd ' .. vim.fn.fnamemodify(vim.fn.expand('%:p:h:h'), ':p') .. ' && cargo build'} })<CR>",
				{ noremap = true, silent = true, desc = "Build rust code with cargo (debug)" }
			)
			-- cargo build (release)
			vim.keymap.set(
				"n",
				"<leader>rB",
				":lua require('FTerm').scratch({ cmd = {'bash', '-c', 'cd ' .. vim.fn.fnamemodify(vim.fn.expand('%:p:h:h'), ':p') .. ' && cargo build --release'} })<CR>",
				{ noremap = true, silent = true, desc = "Build rust code with cargo (release)" }
			)
			-- cargo check
			vim.keymap.set(
				"n",
				"<leader>rc",
				":lua require('FTerm').scratch({ cmd = {'bash', '-c', 'cd ' .. vim.fn.fnamemodify(vim.fn.expand('%:p:h:h'), ':p') .. ' && cargo check'} })<CR>",
				{ noremap = true, silent = true, desc = "Check rust code for errors with cargo" }
			)
			-- cargo clippy (linting)
			vim.keymap.set(
				"n",
				"<leader>rl",
				":lua require('FTerm').scratch({ cmd = {'bash', '-c', 'cd ' .. vim.fn.fnamemodify(vim.fn.expand('%:p:h:h'), ':p') .. ' && cargo clippy'} })<CR>",
				{
					noremap = true,
					silent = true,
					desc = "Use cargo clippy to provide suggestions and warnings for errors in your rust code",
				}
			)
			-- rust docs
			vim.keymap.set(
				"n",
				"<leader>rd",
				":lua require('FTerm').scratch({ cmd = {'bash', '-c', 'cd ' .. vim.fn.fnamemodify(vim.fn.expand('%:p:h:h'), ':p') .. ' && cargo doc --open'} })<CR>",
				{ noremap = true, silent = true, desc = "Open the rust docs with cargo to read up on documentation" }
			)
			-- cargo clean
			vim.keymap.set(
				"n",
				"<leader>ra",
				":lua require('FTerm').scratch({ cmd = {'bash', '-c', 'cd ' .. vim.fn.fnamemodify(vim.fn.expand('%:p:h:h'), ':p') .. ' && cargo clean'} })<CR>",
				{ noremap = true, silent = true, desc = "Clean up all of your built rust programs with cargo clean" }
			)
		end,
	},
}
