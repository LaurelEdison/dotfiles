-- Disable default behaviour
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

vim.keymap.set("n", "<leader>j", "<cmd>bprevious<CR>", { desc = "Move to previous buffer" })
vim.keymap.set("n", "<leader>k", "<cmd>bnext<CR>", { desc = "Move to next buffer" })
vim.keymap.set("n", "<leader>c", "<cmd>bdelete<CR>", { desc = "Delete current buffer" })

vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })
