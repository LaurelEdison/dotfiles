return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	opts = {
		use_default_keymaps = false,
		keymaps = {
			["<CR>"] = "actions.select", -- Open file/directory
		},
		view_options = {
			show_hidden = true,
		},
	},
	keys = {
		{
			"\\",
			function()
				local oil = require("oil")
				if oil.get_current_dir() then
					oil.close()
				else
					oil.open()
				end
			end,
			desc = "Toggle oil file explorer",
			mode = "n",
		},
	},
	-- Optional dependencies
	dependencies = { { "nvim-mini/mini.icons", opts = {} } },
	-- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
	-- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
	lazy = false,
}
