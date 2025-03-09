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
			dapui.setup()

			dap.listeners.before.attach.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.launch.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated.dapui_config = function()
				dapui.close()
			end
			dap.listeners.before.event_exited.dapui_config = function()
				dapui.close()
			end
			vim.keymap.set("n", "<Leader>db", function()
				require("dap").toggle_breakpoint()
			end)
			vim.keymap.set("n", "<Leader>dc", function()
				require("dap").continue()
			end)

			dap.adapters.lldb = {
				type = "server",
				port = 13000,
				executable = {
					command = vim.fn.expand("~")
						.. "/.local/share/nvim/mason/packages/codelldb/extension/lldb/bin/lldb", -- Correct path to the executable
					args = { "--port", "13000" },
				},
			}
			dap.configurations.rust = {
				{
					name = "Launch Rust Program",
					type = "lldb",
					request = "launch",
					program = function()
						return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/target/debug/", "file")
					end,
					cwd = "${workspaceFolder}",
					stopOnEntry = false,
				},
			}
		end,
	},
}
