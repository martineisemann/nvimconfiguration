return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false, -- Wir laden es direkt, damit der Befehl sofort verfügbar ist
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({
      actions = {
        open_file = {
          quit_on_open = true,
        },
      },
      view = {
        width = 30,
        side = "left",
      },
      -- Weitere Optionen hier...
    })
  end,
}
