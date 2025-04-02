return {
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			"rcarriga/nvim-dap-ui",
			"nvim-neotest/nvim-nio",
		},
		config = function()
			local dap = require("dap")
			local dapui = require("dapui")
			-- Configure dapui layout and controls to prevent nil element errors
			dapui.setup({})
			dap.listeners.before.attach.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.launch.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated.dapui_config = function()
				if not dap.session() then
					dapui.close()
				end
			end

			dap.listeners.before.event_exited.dapui_config = function()
				if not dap.session() then
					dapui.close()
				end
			end
			-- rust dap
			dap.adapters.codelldb = {
				type = "executable",
				command = "codelldb", -- or if not in $PATH: "/absolute/path/to/codelldb"

				-- On windows you may have to uncomment this:
				-- detached = false,
			}
			dap.configurations.rust = {
				{
					name = "Launch rust program",
					type = "codelldb",
					request = "launch",
					program = function()
						return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/target/debug/", "file") -- Adjust to your build path
					end,
					cwd = "${workspaceFolder}",
					stopOnEntry = false,
				},
			}
			vim.keymap.set(
				"n",
				"<leader>dc",
				":lcd %:p:h:h | DapContinue<CR>",
				{ desc = "Start debugging with a DAP." }
			)

			vim.keymap.set("n", "<leader>dt", ":DapTerminate<CR>", { desc = "Terminate the debugging DAP (exit)." })

			vim.keymap.set("n", "<leader>db", ":DapToggleBreakpoint<CR>", { desc = "Toggle a debugging breakpoint." })

			vim.keymap.set(
				"n",
				"<leader>ddb",
				":DapClearBreakpoints<CR>",
				{ desc = "Clear all the debugging breakpoints." }
			)

			vim.keymap.set("n", "<leader>dso", ":DapStepOver<CR>", { desc = "Step over with the debugger." })
		end,
	},
}
