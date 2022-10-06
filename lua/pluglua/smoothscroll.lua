require('neoscroll').setup({
    -- All these keys will be mapped to their corresponding default scrolling animation
    mappings = {'<C-u>', '<C-d>', '<C-b>', '<C-f>',
                '<C-y>', '<C-e>', '<C-j>', '<C-k>', 'zt', 'zz', 'zb'},
    hide_cursor = true,          -- Hide cursor while scrolling
    stop_eof = true,             -- Stop at <EOF> when scrolling downwards
    respect_scrolloff = true,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file
    cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
    easing_function = "cubic",       -- Default easing function
    pre_hook = function(info) if info == "cursorline" then vim.wo.cursorline = false end end,
    post_hook = function(info) if info == "cursorline" then vim.wo.cursorline = true end end,
    performance_mode = false,    -- Disable "Performance Mode" on all buffers.
})

local t = {}
-- Syntax: t[keys] = {function, {function arguments}}
t['<C-u>'] = {'scroll', {'-vim.wo.scroll', 'true', '350', [['cubic']]}}
t['<C-d>'] = {'scroll', { 'vim.wo.scroll', 'true', '350', [['cubic']]}}

-- Use the "cubic" easing function
t['<C-b>'] = {'scroll', {'-0.9', 'true', '400', [['cubic']]}}
t['<C-f>'] = {'scroll', { '0.9', 'true', '400', [['cubic']]}}

-- Pass "cubic" to disable the easing animation (constant scrolling speed)
t['<C-y>'] = {'scroll', {'-0.25', 'true', '200', [['cubic']]}}
t['<C-e>'] = {'scroll', { '0.25', 'true', '200', [['cubic']]}}

t['<C-k>'] = {'scroll', {'-0.25', 'true', '200', [['cubic']]}}
t['<C-j>'] = {'scroll', { '0.25', 'true', '200', [['cubic']]}}

t['<ScrollWheelUp>'] = {'scroll', {'-0.25', 'true', '200', [['cubic']]}}
t['<ScrollWheelDown>'] = {'scroll', { '0.25', 'true', '200', [['cubic']]}}

-- When no easing function is provided the default easing function (in this case "quadratic") will be used
t['zt']    = {'zt', {'250'}}
t['zz']    = {'zz', {'250'}}
t['zb']    = {'zb', {'250'}}

require('neoscroll.config').set_mappings(t)
