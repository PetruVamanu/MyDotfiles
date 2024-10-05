require "nvchad.options"

-- add yours here!
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 0
vim.opt.smartindent = true
vim.wo.relativenumber = true
vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  update_in_insert = true,
})
-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
