return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    opts = {
      color_overrides = {
        mocha = {
          base = '#000000',
          mantle = '#080808',
          crust = '#080808',
        },
      },
    },
    init = function()
      vim.cmd.colorscheme 'catppuccin-mocha'
    end,
  },
}
