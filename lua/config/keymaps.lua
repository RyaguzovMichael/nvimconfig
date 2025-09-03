-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Горячие клавиши для zk.nvim (Obsidian-like функциональность)
vim.keymap.set(
    "n",
    "<leader>zn",
    ":ZkNew<CR>",
    { noremap = true, silent = true, desc = "Create new Obsidian-style note" }
)
vim.keymap.set("n", "<leader>zl", ":ZkInsertLink<CR>", { noremap = true, silent = true, desc = "Insert link to note" })
vim.keymap.set("n", "<leader>zg", ":ZkGoto<CR>", { noremap = true, silent = true, desc = "Go to linked note" })
vim.keymap.set("n", "<leader>zb", ":ZkBacklinks<CR>", { noremap = true, silent = true, desc = "Show backlinks" })
vim.keymap.set("n", "<leader>zt", ":ZkTags<CR>", { noremap = true, silent = true, desc = "List all tags" })
vim.keymap.set(
    "v",
    "<leader>zl",
    ":<C-u>ZkLink<CR>",
    { noremap = true, silent = true, desc = "Create link from selected text" }
)
