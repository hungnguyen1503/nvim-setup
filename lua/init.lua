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
