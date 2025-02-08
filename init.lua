vim.g.mapleader = "<Space>"

require("config.lazy")

vim.cmd("colorscheme kanagawa")

local lspconfig = require("lspconfig")

lspconfig.lua_ls.setup({})

vim.opt.nu = true

vim.opt.cmdheight = 2 -- more space in the neovim command line for displaying messages
vim.opt.shiftwidth = 2 -- the number of spaces inserted for each indentation
vim.opt.tabstop = 2 -- insert 2 spaces for a tab
vim.opt.wrap = true -- wrap lines

-- use treesitter folding
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

vim.fn.sign_define("DiagnosticSignError", { text = " ", texthl = "DiagnosticSignError" })
vim.fn.sign_define("DiagnosticSignWarn", { text = " ", texthl = "DiagnosticSignWarn" })
vim.fn.sign_define("DiagnosticSignInfo", { text = " ", texthl = "DiagnosticSignInfo" })
vim.fn.sign_define("DiagnosticSignHint", { text = "󰌵", texthl = "DiagnosticSignHint" })

vim.cmd("Neotree")

require("mappings")
require("autocmd")
