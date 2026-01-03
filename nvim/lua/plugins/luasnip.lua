return {
  {
    "L3MON4D3/LuaSnip",
    version = "v2.*",
    build = "make install_jsregexp", -- Optional: Erlaubt komplexe Snippets
    dependencies = { "rafamadriz/friendly-snippets" },
    config = function()
      -- Lädt die Snippets von friendly-snippets
      require("luasnip.loaders.from_vscode").lazy_load()
      
      -- Eigene Keymaps zum Springen innerhalb von Snippets
      -- Wenn du in einem Snippet bist, kommst du mit Tab zum nächsten Feld
      vim.keymap.set({"i", "s"}, "<Tab>", function()
        if require("luasnip").expand_or_jumpable() then
          require("luasnip").expand_or_jump()
        else
          vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Tab>", true, false, true), "n", false)
        end
      end, {silent = true})
    end,
  }
}
