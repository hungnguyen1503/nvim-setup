local M = {}

M.PreventArrow = {
    n = {
        ["<up>"] = { ":lua require'notify'('Arrow is stupid', 'error')<cr>", "Don't use arrow" },
        ["<down>"] = { ":lua require'notify'('Arrow is stupid', 'error')<cr>", "Don't use arrow" },
        ["<right>"] = { ":lua require'notify'('Arrow is stupid', 'error')<cr>", "Don't use arrow" },
        ["<left>"] = { ":lua require'notify'('Arrow is stupid', 'error')<cr>", "Don't use arrow" },       
    }
}

return M

