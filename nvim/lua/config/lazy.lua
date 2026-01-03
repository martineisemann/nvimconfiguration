
-- ~/.config/nvim/lua/config/lazy.lua

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- Lazy installieren, falls noch nicht vorhanden
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

-- Plugins laden
require("lazy").setup("plugins", {
  -- LuaRocks deaktivieren (verhindert falsches Laden)
  rocks = { enabled = false },
})
