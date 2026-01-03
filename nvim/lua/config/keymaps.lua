-- Own keybindings --

-- vim.keymap.set({mode}, {key you want to bind}, {action to execute}, {opts}) -- general form for setting keybindings

-- Direct Keys
vim.keymap.set({ 'n', 'x' }, 'x', '"_x', { desc = 'Delete character using x without saving it to the buffer' })

-- Leader Keys
vim.keymap.set('n', '<leader>a', ':keepjumps normal! ggVG<cr>', { desc = 'Select whole file with <leader>a' })
vim.keymap.set('n', '<leader>c', 'gcip', { remap = true, desc = 'Un/Comment whole paragraph' })
vim.keymap.set('n', '<leader>f', ':NvimTreeFindFileToggle<CR>', { desc = 'Open file explorer with <leader>f' })
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>', { desc = 'Unhighlight any search results' })
vim.keymap.set('n', '<leader>r', ':reg<CR>', { desc = 'Open registers' })

-- Ctrl Keys
-- Zeile nach unten verschieben (Ctrl + j)
vim.keymap.set('n', '<C-j>', ':m .+1<CR>==', { desc = 'Move line down' })

-- Zeile nach oben verschieben (Ctrl + k)
vim.keymap.set('n', '<C-k>', ':m .-2<CR>==', { desc = 'Move line up' })

-- Visual Mode: Ganze Blöcke verschieben
vim.keymap.set('v', '<C-j>', ":m '>+1<CR>gv=gv", { desc = 'Move selection down' })
vim.keymap.set('v', '<C-k>', ":m '<-2<CR>gv=gv", { desc = 'Move selection up' })

-- Keymaps für das Debugging
-- in plugins/dab definiert

-- LuaSnip tab bindings
vim.keymap.set({ "i", "s" }, "<Tab>", function()
  local ls = require("luasnip")
  if ls.expand_or_jumpable() then
    return "<Plug>luasnip-expand-or-jump"
  else
    return "<Tab>"
  end
end, { expr = true, silent = true })

vim.keymap.set({ "i", "s" }, "<S-Tab>", function()
  local ls = require("luasnip")
  if ls.jumpable(-1) then
    return "<Plug>luasnip-jump-prev"
  else
    return "<S-Tab>"
  end
end, { expr = true, silent = true })
