local M = {
    "akinsho/bufferline.nvim",
    event = { "BufReadPre", "BufAdd", "BufNew", "BufReadPost" },
    dependencies = {
        {
            "famiu/bufdelete.nvim",
        },
    },
}
function M.config()
    require("bufferline").setup {
        options = {
            close_command = "Bdelete! %d",       -- can be a string | function, see "Mouse actions"
            right_mouse_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
            offsets = { {
                filetype = "NvimTree",
                text = function()
                    return vim.fn.getcwd()
                end,
            } },
            separator_style = "thin", -- | "thick" | "thin" | { 'any', 'any' },
            diagnostics_indicator = function(count, level, diagnostics_dict, context)
                local icon = level:match("error") and " " or " "
                return " " .. icon .. count
            end,
        },
    }
end

return M
