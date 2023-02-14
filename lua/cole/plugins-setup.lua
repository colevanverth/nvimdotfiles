-- auto install packer if not installed
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
    vim.cmd([[packadd packer.nvim]])
    return true
  end
  return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- autocommand that reloads neovim and installs/updates/removes plugins
-- when file is saved
vim.cmd([[ 
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
  return
end

-- add list of plugins to install
return packer.startup(function(use)
   
  use("wbthomason/packer.nvim") -- Package manager (it manages itself)

  use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" }) -- Fuzzy finder (search for files or by string)

  use("nvim-lua/plenary.nvim") -- Lua functions that many plugins use

  use("tpope/vim-surround") -- Adds new operations for surrounding text

  use("vim-scripts/ReplaceWithRegister") -- Adds new operators for replaying text with buffer

  -- use("rebelot/kanagawa.nvim") -- Colorscheme

  use("SirVer/ultisnips") -- Snippets

  use("numToStr/Comment.nvim"); -- Allows for comments to be added and removed very easily

  use("nvim-tree/nvim-tree.lua"); -- File explorer

  use("folke/tokyonight.nvim");
  if packer_bootstrap then
    require("packer").sync()
  end
end)


