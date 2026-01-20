return {
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    config = function()
        require("kanagawa").setup({
            -- hier deine Einstellungen
        })
        vim.cmd("colorscheme kanagawa")
    end,
}
