vim.g.mapleader = " "

local keymap = vim.keymap

-- Essential rebinds
keymap.set("n", "//", ":nohl<CR>") -- Resets searchs on slash double tap
keymap.set("n", "x", '"_x"') -- Makes the buffer ignore a change if x is clicked
keymap.set("n", "<leader>u", "~") -- Toggles case
keymap.set("n", "<leader>cq", 'ci"') -- C in quotes
keymap.set("n", "<leader>cb", 'ci{') -- C in curly brackets

-- Nvim tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- Toggles Nvim Tree

-- Windows movements
keymap.set("n", "<leader>j", "<C-w>v") -- Split window vertically
keymap.set("n", "<leader>h", "<C-w>h") -- Moves to left pane
keymap.set("n", "<leader>l", "<C-w>l") -- Moves to right pane
keymap.set("n", "<leader>q", ":q<CR>") -- Deletes the current window
keymap.set("n", "<leader>w", ":w<CR>") -- Saves the window

-- Tabs
keymap.set("n", "<leader>d", ":tabnew<CR>") -- Opens new tab
keymap.set("n", "<leader>s", ":tabn<CR>") -- Go to next tab
keymap.set("n", "<leader>a", ":tabp<CR>") -- Go to previous tab

-- Telescope
keymap.set("n", "<leader>gf", "<cmd>Telescope find_files<cr>") -- Find files within current working directory, respects .gitignore
