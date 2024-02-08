local utils = require('utils')

local cmd = vim.cmd
local indent = 4

cmd 'syntax enable'
cmd 'filetype plugin indent on'
utils.opt('b', 'expandtab', true)
utils.opt('b', 'shiftwidth', indent)
utils.opt('b', 'smartindent', true)
utils.opt('b', 'tabstop', indent)
utils.opt('o', 'hidden', true)
utils.opt('o', 'ignorecase', true)
utils.opt('o', 'scrolloff', 4 )
utils.opt('o', 'shiftround', true)
utils.opt('o', 'smartcase', true)
utils.opt('o', 'splitbelow', true)
utils.opt('o', 'splitright', true)
utils.opt('o', 'wildmode', 'list:longest')
utils.opt('w', 'number', true)
utils.opt('w', 'relativenumber', true)
utils.opt('o', 'clipboard','unnamed,unnamedplus')

-- Highlight on yank
vim.cmd 'au TextYankPost * lua vim.highlight.on_yank {on_visual = false}'

-- format on save
vim.cmd [[autocmd BufWritePre *.go  lua vim.lsp.buf.format{async = true}]]
vim.cmd [[autocmd BufWritePre *.js  lua vim.lsp.buf.format{async = true}]]
vim.cmd [[autocmd BufWritePre *.ts  lua vim.lsp.buf.format{async = true}]]
vim.cmd [[autocmd BufWritePre *.tsx  lua vim.lsp.buf.format{async = true}]]

vim.cmd 'set timeoutlen=1000 ttimeoutlen=0'
