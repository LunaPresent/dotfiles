vim.g.mapleader = " "

vim.keymap.set("i", "<C-h>", "<Left>", { desc = "Move cursor left" })
vim.keymap.set("i", "<C-l>", "<Right>", { desc = "Move cursor right" })

vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Navigate window left" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Navigate window right" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Navigate window down" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Navigate window up" })

vim.keymap.set("n", "<A-j>", "<cmd>m +1<CR>", { desc = "Move line down" })
vim.keymap.set("n", "<A-k>", "<cmd>m -2<CR>", { desc = "Move line up" })
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll half page down" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll half page up" })
vim.keymap.set("n", "n", "nzzzv", { desc = "Find next" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Find previous" })

vim.keymap.set("x", "<leader>xp", [["_dP]], { desc = "Silent paste" })
vim.keymap.set({ "n", "v" }, "<leader>xd", [["_d]], { desc = "Silent delete" })
vim.keymap.set("n", "<leader>xD", [["_D]], { desc = "Silent delete" })
vim.keymap.set({ "n", "v" }, "<leader>xc", [["_c]], { desc = "Silent change" })
vim.keymap.set("n", "<leader>xC", [["_C]], { desc = "Silent change" })

vim.keymap.set({ "n", "v" }, "<leader>cp", [["+p]], { desc = "Paste from clipboard" })
vim.keymap.set("n", "<leader>cP", [["+P]], { desc = "Paste from clipboard" })
vim.keymap.set({ "n", "v" }, "<leader>cd", [["+d]], { desc = "Delete to clipboard" })
vim.keymap.set("n", "<leader>cD", [["+D]], { desc = "Delete to clipboard" })
vim.keymap.set({ "n", "v" }, "<leader>cc", [["+c]], { desc = "Change to clipboard" })
vim.keymap.set("n", "<leader>cC", [["+C]], { desc = "Change to clipboard" })
vim.keymap.set({ "n", "v" }, "<leader>cy", [["+y]], { desc = "Yank to clipboard" })
vim.keymap.set("n", "<leader>cY", [["+Y]], { desc = "Yank to clipboard" })

vim.keymap.set(
	"n",
	"<leader>r",
	[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
	{ desc = "Replace all matching" }
)

vim.keymap.set("v", "<CR>", "<Esc>", { desc = "Escape visual mode" })
vim.keymap.set("n", "<Esc>", "<cmd>noh<cr>", { desc = "Clear search" })
vim.keymap.set("n", "<C-c>", "<cmd>noh<cr>", { desc = "Clear search" })
