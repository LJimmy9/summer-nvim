vim.keymap.set("v", "J", ":m '>1<CR>gv=gv")

vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<M-i>", "<C-i>", { noremap = true, silent = true })
vim.keymap.set("n", "<M-o>", "<C-o>", { noremap = true, silent = true })

-- Terminal split and navigation
vim.keymap.set("n", "<leader>v", ":vsplit<CR><C-w>l", { noremap = true })
vim.keymap.set("n", "<leader>h", ":wincmd h<CR>", { noremap = true })
vim.keymap.set("n", "<leader>l", ":wincmd l<CR>", { noremap = true })

vim.keymap.set("n", "<leader>k", ":wincmd k<CR>", { noremap = true })
vim.keymap.set("n", "<leader>j", ":wincmd j<CR>", { noremap = true })
vim.keymap.set("n", "<leader>x", ":wincmd q<CR>", { noremap = true })

vim.keymap.set("n", "<leader>er", vim.cmd.Ex, { silent = true })
