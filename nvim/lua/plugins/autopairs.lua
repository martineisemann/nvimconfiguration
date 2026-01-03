return {
    "windwp/nvim-autopairs",
    event = "InsertEnter", -- Das Plugin wird erst geladen, wenn du in den Insert-Mode gehst
    config = function()
        require("nvim-autopairs").setup({
            check_ts = true, -- Nutzt Treesitter, um z.B. in Strings keine Klammern zu paaren
            ts_config = {
                lua = { "string" }, -- In Lua-Strings keine Paare bilden
                javascript = { "template_string" },
            },
        })
    end
}
