return {
  "kylechui/nvim-surround",
  version = "*",        -- optional: immer neueste Version
  event = "VeryLazy",   -- oder "InsertEnter"/"CursorHold" o.ä.
  keys = {
    { "ys", mode = "n" },
    { "ds", mode = "n" },
    { "cs", mode = "n" },
    { "yS", mode = "n" },
  },
  config = function()
    require("nvim-surround").setup({
      -- hier kannst du Defaults anpassen, z.B.:
      -- surrounds = { … }, alias für Zeichenpaare u.a.
    })
  end,
}
