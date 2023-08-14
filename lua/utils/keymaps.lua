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

vim.keymap.set("n", "<leader>er", vim.cmd.Ex, { silent = true, desc = "Open explorer" })

vim.keymap.set("n", "<leader>w", function()
	vim.lsp.buf.format()
	vim.cmd("update")
end)


vim.keymap.set("n", "<leader>gg", function()
	vim.cmd(":lua require('telescope').extensions.git_worktree.git_worktrees()")
end)
vim.keymap.set("n", "<leader>ga", function()
	vim.cmd(":lua require('telescope').extensions.git_worktree.create_git_worktree()")
end)
