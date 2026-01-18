-- Own commands --
-- Syntax: vim.api.nvim_create_user_command({name}, {command}, {opts})


-- Autocommands (Execute an action when Neovim triggers an event) --
-- Syntax: vim.api.nvim_create_autocmd({event}, {opts})
-- Simple example (shows a small highlight of the text when yank is executed)

local augroup = vim.api.nvim_create_augroup('user_cmds', { clear = true })

-- Yanked text gets highlighted for some time
vim.api.nvim_create_autocmd('TextYankPost', {
    group = augroup,
    desc = 'Highlight on yank',
    callback = function(event)
        vim.highlight.on_yank({ higroup = 'Visual', timeout = 200 })
    end
})

-- Aufzählungen fortführen
vim.api.nvim_create_autocmd("FileType", {
    pattern = { "markdown", "text", "gitcommit" },
    callback = function()
        vim.opt_local.autoindent = true
        vim.opt_local.formatoptions:append("ron")
        vim.opt_local.comments = {
            "b:-",
            "b:+",
            "b:*",
            "b:1.",
            "b:2.",
            "b:3.",
        }
    end,
})

-- Quick build of the current .cpp file (works only for single file projects)
vim.api.nvim_create_user_command("Buildthis", function()
    vim.cmd("!g++ -g -std=c++23 -O2 *.cpp -o output && ./output")
end, {})
