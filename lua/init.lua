local keymap = vim.keymap
local api = vim.api

-- Don't you arrow in keyboard
vim.keymap.set('n', '<Up>','<cmd>lua require("notify")("Arrow is stupid","error",{title="You can not use arrow"})<CR>')
vim.keymap.set('n', '<Down>','<cmd>lua require("notify")("Arrow is stupid","error",{title="You can not use arrow"})<CR>')
vim.keymap.set('n', '<Right>','<cmd>lua require("notify")("Arrow is stupid","error",{title="You can not use arrow"})<CR>')
vim.keymap.set('n', '<Left>','<cmd>lua require("notify")("Arrow is stupid","error",{title="You can not use arrow"})<CR>')

-- Change size font
vim.keymap.set('n','<leader>if','<cmd>FontSizeUp 1<CR>')
vim.keymap.set('n','<leader>df','<cmd>FontSizeDown 1<CR>')

-- -- Press <C-b> to call specs!
-- vim.api.nvim_set_keymap('n', '<C-b>', ':lua require("specs").show_specs()', { noremap = true, silent = true })

-- -- You can even bind it to search jumping and more, example:
-- vim.api.nvim_set_keymap('n', 'n', 'n:lua require("specs").show_specs()<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', 'N', 'N:lua require("specs").show_specs()<CR>', { noremap = true, silent = true })

-- -- Or maybe you do a lot of screen-casts and want to call attention to a specific line of code:
-- vim.api.nvim_set_keymap('n', '<leader>v', ':lua require("specs").show_specs({width = 97, winhl = "Search", delay_ms = 610, inc_ms = 21})<CR>', { noremap = true, silent = true })
