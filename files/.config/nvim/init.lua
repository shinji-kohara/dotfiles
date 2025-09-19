require("config.options")
require("config.cmd")
require("config.keymaps")

-- ==============================
-- plugin manager
-- ==============================
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- 最新安定版
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")

-- ==============================
-- LSP, complimation, etc
-- ==============================
require("config.lsp")
require("config.cmp")
