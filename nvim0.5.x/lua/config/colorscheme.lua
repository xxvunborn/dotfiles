local utils = require('utils')
local cmd = vim.cmd
utils.opt('o', 'termguicolors', true)

vim.g.vscode_style = "dark"
cmd 'colorscheme vscode'
