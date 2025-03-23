vim.g.mapleader = " "

vim.keymap.set("i", "jj", "<Esc>", { desc = "Escape insert mode" })
vim.keymap.set("i", "<C-h>", "<Left>", { desc = "Move cursor left" })
vim.keymap.set("i", "<C-l>", "<Right>", { desc = "Move cursor right" })

vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Navigate window left" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Navigate window right" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Navigate window down" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Navigate window up" })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })
vim.keymap.set("v", "<CR>", "<Esc>", { desc = "Escape visual mode" })

vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll half page down" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll half page up" })
vim.keymap.set("n", "n", "nzzzv", { desc = "Find next" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Find previous" })

vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "Silent paste" })
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Silent delete" })
vim.keymap.set("n", "<leader>D", [["_D]], { desc = "Silent delete" })
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank to clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Yank to clipboard" })

vim.keymap.set({ "n", "v" }, "<leader>cp", [["+p]], { desc = "Paste clipboard" })
vim.keymap.set("n", "<leader>cP", [["+P]], { desc = "Paste clipboard" })
vim.keymap.set({ "n", "v" }, "<leader>cd", [["+d]], { desc = "Delete to clipboard" })
vim.keymap.set("n", "<leader>cD", [["+D]], { desc = "Delete to clipboard" })
vim.keymap.set({ "n", "v" }, "<leader>cy", [["+y]], { desc = "Yank to clipboard" })
vim.keymap.set("n", "<leader>cY", [["+Y]], { desc = "Yank to clipboard" })

vim.keymap.set(
	"n",
	"<leader>r",
	[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
	{ desc = "Replace all matching" }
)

vim.keymap.set("n", "<Esc>", "<cmd>noh<cr>", { desc = "Clear search" })
vim.keymap.set("n", "<C-c>", "<cmd>noh<cr>", { desc = "Clear search" })
