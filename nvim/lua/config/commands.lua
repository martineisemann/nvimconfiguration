

-- Own commands --
-- Syntax: vim.api.nvim_create_user_command({name}, {command}, {opts})


-- Autocommands (Execute an action when Neovim triggers an event) --
-- Syntax: vim.api.nvim_create_autocmd({event}, {opts})
-- Simple example (shows a small highlight of the text when yank is executed)

local augroup = vim.api.nvim_create_augroup('user_cmds', {clear = true})

vim.api.nvim_create_autocmd('TextYankPost', {
  group = augroup,
  desc = 'Highlight on yank',
  callback = function(event)
    vim.highlight.on_yank({higroup = 'Visual', timeout = 200})
  end
})

-- Quick build of the current .cpp file (works only for single file projects)
vim.api.nvim_create_user_command("Buildthis", function()
  vim.cmd("!g++ -std=c++20 -O2 % -o %:r && ./%:r")
end, {})


