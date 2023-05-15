local function map(mode, lhs, rhs, hint)
    vim.keymap.set(mode, lhs, rhs, {desc = hint})
end

-- insert模式
map("i", "<C-b>", "<Esc>^i", "Go to beginning of line")
map("i", "<C-e>", "<End>", "Go to end of line")
map("i", "<C-h>", "<Left>", "Move left")
map("i", "<C-l>", "<Right>", "Move right")
map("i", "<C-k>", "<Up>", "Move up")
map("i", "<C-j>", "<Down>", "Move down")

-- normal模式
map("n", "<Esc>", ":noh <CR>", "Clear highlights")
-- 窗口移动
map("n", "<C-h>", "<C-w>h", "Move to left window")
map("n", "<C-l>", "<C-w>l", "Move to right window")
map("n", "<C-j>", "<C-w>j", "Move to down window")
map("n", "<C-k>", "<C-w>k", "Move to up window")
-- 方向键调整窗口
map("n", "<C-Up>", ":resize -2<CR>", "Resize window")
map("n", "<C-Down>", ":resize +2<CR>", "Resize window")
map("n", "<C-Left>", ":vertical resize -2<CR>", "Resize window")
map("n", "<C-Right>", ":vertical resize +2<CR>", "Resize window")
-- buffer
map("n", "<S-h>", ":bnext<CR>", "Move to next buffer")
map("n", "<S-l>", ":bprevious<CR>", "Move to previous buffer")
map("n", "<C-q>", ":Bdelete!<CR>", "Close buffer")

map("n", "<C-s>", "<cmd> w <CR>", "Save file")

-- Visual模式
map("v", "<", "<gv", "Indent")
map("v", ">", ">gv", "Indent")

-- nvim-tree
map("n", "<C-b>", "<cmd> NvimTreeToggle <CR>", "Toggle nvim-tree")
map("n", "<leader>tf", "<cmd> NvimTreeFocus <CR>", "Focus nvim-tree")

