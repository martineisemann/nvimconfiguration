return {
    "stevearc/conform.nvim",
    opts = {
        formatters_by_ft = {
            lua = { "stylua" },
            python = { "black" },
            -- Only list the formatter name here
            cpp = { "clang-format" },
            c = { "clang-format" },
        },
        -- Define the custom behavior for clang-format here
        formatters = {
            ["clang-format"] = {
                prepend_args = {
                    "--style={BasedOnStyle: LLVM, IndentWidth: 4}",
                },
            },
        },
        format_on_save = {
            timeout_ms = 500,
            lsp_fallback = true,
        },
    },
}
