local M = {
    "RRethy/vim-illuminate",
    event = "VeryLazy",
}

function M.config()
    local illuminate = require "illuminate"
    vim.g.Illuminate_ftblacklist = {"alpha", "NvimTree"}
    vim.api.nvim_set_keymap(
        "n",
        "<a-.>",
        '<cmd>lua require"illuminate".next_reference{wrap=true}<CR>',
        { noremap = true }
    )
end

return M

