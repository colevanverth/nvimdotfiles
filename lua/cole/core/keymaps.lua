vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "//", ":nohl<CR>") -- Resets searchs on slash double tap

keymap.set("n", "x", '"_x"') -- Makes the buffer ignore a change if x is clicked

keymap.set("n", "<leader>j", "<C-w>v") -- Split window vertically
keymap.set("n", "<leader>k", "<C-w>=") -- Make windows equal
keymap.set("n", "<leader>h", "<C-w>h") -- Moves to left pane
keymap.set("n", "<leader>l", "<C-w>l") -- Moves to right pane
keymap.set("n", "<leader>q", ":q<CR>") -- Deletes the current window
keymap.set("n", "<leader>w", ":w<CR>") -- Saves the window

keymap.set("n", "<leader>d", ":tabnew<CR>") -- Opens new tab
keymap.set("n", "<leader>f", ":tabclose<CR>") -- Closes current tab
keymap.set("n", "<leader>a", ":tabn<CR>") -- Go to next tab
keymap.set("n", "<leader>s", ":tabp<CR>") -- Go to previous tab

keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- Toggles Nvim Tree

keymap.set("n", "<leader>gf", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>gs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>gc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>gb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>gh", "<cmd>Telescope help_tags<cr>") -- list available help tags

