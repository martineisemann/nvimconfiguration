return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    -- Wir nutzen pcall, damit Neovim nicht mit einem Fehler abbricht,
    -- falls das Plugin physisch noch nicht auf der Festplatte ist.
    local status, configs = pcall(require, "nvim-treesitter.configs")
    if not status then
        return
    end

    configs.setup({
      ensure_installed = { "c", "cpp", "lua", "python", "java", "latex", "markdown", "vim", "vimdoc" },
      highlight = { enable = true },
      indent = { enable = true },
      auto_install = true,
    })
  end,
}
