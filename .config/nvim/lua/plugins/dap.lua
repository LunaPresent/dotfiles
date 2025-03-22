return {
	"mfussenegger/nvim-dap",
	config = function()
		local dap = require("dap")

		vim.fn.sign_define('DapBreakpoint',
			{ text = '', texthl = 'DapBreakpoint', numhl = 'DapBreakpoint' })

		vim.keymap.set("n", "<leader>gb", dap.toggle_breakpoint, { desc = "Toggle breakpoint" })
		vim.keymap.set("n", "<leader>gn", dap.clear_breakpoints, { desc = "Clear breakpoints" })
		vim.keymap.set("n", "<leader>gc", dap.continue, { desc = "DAP continue" })
		vim.keymap.set("n", "<leader>gj", dap.step_over, { desc = "Step over" })
		vim.keymap.set("n", "<leader>gl", dap.step_into, { desc = "Step into" })
		vim.keymap.set("n", "<leader>gh", dap.step_out, { desc = "Step out" })

		dap.adapters.gdb = {
			type = "executable",
			command = "gdb",
			args = { "--interpreter=dap", "--eval-command", "set print pretty on" }
		}

		dap.configurations.rust = {
			{
				name = "Launch",
				type = "gdb",
				request = "launch",
				program = function()
					return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/target/debug/', 'file')
				end,
				cwd = "${workspaceFolder}",
				stopAtBeginningOfMainSubprogram = false,
			}
		}

		require("which-key").add({
			{ "<leader>g", group = "Debug" }
		})
	end
}
