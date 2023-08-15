vim.opt.clipboard = "unnamedplus"
vim.opt.showtabline = 0
vim.opt.smartcase = true
vim.opt.smartindent = true   
vim.opt.number = true
vim.opt.termguicolors = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2                                    -- insert 2 spaces for a tab
vim.opt.shiftwidth = 2                                 -- the number of spaces inserted for each indentation
vim.opt.smartindent = true                             -- make indenting smarter again
vim.opt.expandtab = true
vim.opt.smartcase = true                               -- smart case
vim.opt.swapfile = false                               -- creates a swapfile


vim.opt.wrap = true                                   -- display lines as one long line

vim.opt.whichwrap:append("<,>,[,],h,l")                -- keys allowed to move to the previous/next line when the beginning/end of line is reached
vim.opt.iskeyword:append("-")                          -- treats words with `-` as single words

vim.opt.updatetime = 300                               -- faster completion (4000ms default)
vim.opt.laststatus = 0                                 -- disables the status line



