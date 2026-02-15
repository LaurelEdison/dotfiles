return {
	"nvim-mini/mini.nvim",
	lazy = false,
	config = function()
		require("mini.ai").setup({ n_lines = 500 })
		require("mini.surround").setup()
		require("mini.pairs").setup()
		require("mini.tabline").setup()
		require("mini.notify").setup()
		require("mini.starter").setup()
		require("mini.indentscope").setup()

		local miniclue = require("mini.clue")
		miniclue.setup({
			window = {
				delay = 0,
			},
			triggers = {
				-- Custom Leader keys
				{ mode = "n", keys = "<Leader>" },
				{ mode = "x", keys = "<Leader>" },

				-- Built-in prefixes (Normal mode)
				{ mode = "n", keys = "c" },
				{ mode = "n", keys = "g" },
				{ mode = "n", keys = "z" },
				{ mode = "n", keys = '"' },
				{ mode = "n", keys = "`" },
				{ mode = "n", keys = "'" },
				{ mode = "n", keys = "]" },
				{ mode = "n", keys = "[" },
				{ mode = "n", keys = "<C-w>" }, -- Window commands

				-- Built-in prefixes (Visual mode)
				{ mode = "x", keys = "g" },
				{ mode = "x", keys = "z" },
				{ mode = "x", keys = '"' },
				{ mode = "x", keys = "`" },
				{ mode = "x", keys = "'" },
				{ mode = "x", keys = "]" },
				{ mode = "x", keys = "[" },

				-- Insert mode completion prefixes
				{ mode = "i", keys = "<C-x>" },
				-- Operator-pending mode (e.g., after d, y, c)
				{ mode = "o", keys = "n" },
				{ mode = "o", keys = "a" },
				{ mode = "o", keys = "i" },
				{ mode = "o", keys = "g" },
				{ mode = "o", keys = "z" },
				{ mode = "o", keys = "g" },
				{ mode = "o", keys = "z" },
				{ mode = "o", keys = "]" },
				{ mode = "o", keys = "[" },
				{ mode = "o", keys = "i" },
				{ mode = "o", keys = "a" },
			},

			clues = {
				miniclue.gen_clues.square_brackets(),
				miniclue.gen_clues.builtin_completion(),
				miniclue.gen_clues.g(),
				miniclue.gen_clues.marks(),
				miniclue.gen_clues.registers(),
				miniclue.gen_clues.windows(),
				miniclue.gen_clues.z(),
			},
		})
		local statusline = require("mini.statusline")
		statusline.setup({ use_icons = vim.g.have_nerd_font })
	end,
	keys = {
	},

	init = function() end,
}
