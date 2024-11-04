vim.g.mapleader = " "

require "auser.lazy"

vim.o.tabstop = 4 -- A TAB character looks like 4 spaces
vim.o.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
vim.o.softtabstop = 4 -- Number of spaces inserted instead of a TAB character
vim.o.shiftwidth = 4 -- Number of spaces inserted when indenting

vim.wo.number = true
vim.o.cursorline = true
vim.opt.clipboard = "unnamedplus"

vim.api.nvim_create_autocmd("VimEnter", {
  command = ":TSEnable highlight",
})

vim.o.tabstop = 4

vim.o.softtabstop = 4

vim.o.shiftwidth = 4

vim.api.nvim_create_user_command("RunLatexmk", function()
  local current_file = vim.fn.expand "%:p" -- Get just the filename
  vim.fn.system("latexmk -pdf " .. current_file)
end, {})
