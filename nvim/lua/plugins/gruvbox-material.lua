return {
  {
    "sainnhe/gruvbox-material",
    lazy = false,    -- sofort laden, nicht verzögert
    priority = 1000, -- sicherstellen, dass das Theme zuerst geladen wird
    config = function()
      -- True-Color aktivieren
      vim.opt.termguicolors                         = true

      -- Gruvbox-Material Optionen
      vim.g.gruvbox_material_background             = "medium" -- "hard", "medium", "soft"
      vim.g.gruvbox_material_foreground             = "mix"  -- "material", "mix", "original"
      vim.g.gruvbox_material_transparent_background = 1      -- transparentes Terminal-Hintergrund
      vim.g.gruvbox_material_dim_inactive_windows   = 1      -- inaktive Fenster abdunkeln
      vim.g.gruvbox_material_better_performance     = 1      -- Performance-Optimierung

      -- Colorscheme setzen
      vim.cmd("colorscheme gruvbox-material")
    end,
  },
}
