local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system {
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

-- Configuration des raccourcis pour différents types de fenêtres
vim.api.nvim_set_keymap("n", "<Leader>th", ":ToggleTerm direction=horizontal<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>tv", ":ToggleTerm direction=vertical<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>tf", ":ToggleTerm direction=float<CR>", { noremap = true, silent = true })

-- Navigation entre les splits avec Ctrl-h/j/k/l
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })

-- Navigation entre les splits en mode terminal
vim.api.nvim_set_keymap("t", "<C-h>", "<C-w>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<C-j>", "<C-w>j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<C-k>", "<C-w>k", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<C-l>", "<C-w>l", { noremap = true, silent = true })

require("lazy").setup "auser.plugins"

require("nvim-web-devicons").setup { default = true }

require("nvim-tree").setup {
  renderer = {
    icons = {
      show = {
        file = true,
        folder = true,
        git = true,
      },
    },
  },
}
