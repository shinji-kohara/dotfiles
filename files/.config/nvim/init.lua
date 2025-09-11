-- ==============================
-- 基本設定
-- ==============================
require("config.options")   -- vim.opt 系
require("config.cmd")       -- vim.cmd 系
require("config.keymaps")   -- キーマップ

-- ==============================
-- プラグイン管理 (lazy.nvim)
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
-- LSP / 補完など
-- ==============================
require("config.lsp")
require("config.cmp")
