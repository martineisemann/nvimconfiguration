return {
  "iamcco/markdown-preview.nvim",
  ft = { "markdown" },
  build = function()
    -- wechselt in das Plugin-Verzeichnis und installiert dependencies
    vim.fn.system({ "bash", "-c", "cd " .. vim.fn.stdpath("data") .. "/lazy/markdown-preview.nvim/app && yarn install" })
  end,
  config = function()
    -- Optionale Settings
    vim.g.mkdp_auto_start         = 0 -- nicht automatisch beim Öffnen starten
    vim.g.mkdp_auto_close         = 1 -- schließen wenn Buffer schließt
    vim.g.mkdp_refresh_slow       = 0
    vim.g.mkdp_command_for_global = 0
    -- Shortcut zum Starten/Stoppen
    vim.api.nvim_set_keymap("n", "<Leader>pp", ":MarkdownPreviewToggle<CR>", { noremap = true, silent = true })
  end,
}
