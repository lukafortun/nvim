return {
  "folke/tokyonight.nvim",
  name = "tokyonight-storm",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd [[colorscheme tokyonight-storm]]
  end,
}
