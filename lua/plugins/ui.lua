local diagnostics = {
    "diagnostics",
    sources = { "nvim_diagnostic", "nvim_lsp" },
    sections = { "error", "warn" },
    symbols = { error = " ", warn = " " },
    colored = true,
    always_visible = false,
}

local hide_in_width = function()
    return vim.fn.winwidth(0) > 80
end

local diff = {
    "diff",
    colored = true,
    symbols = { added = " ", modified = " ", removed = " " }, -- changes diff symbols
    cond = hide_in_width,
}

local filetype = {
    "filetype",
    icons_enabled = true,
}

local location = {
    "location",
    padding = 0,
}

return {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    -- lazy = false,
    config = function()
        require("lualine").setup({
            options = {
                disabled_filetypes = { "alpha", "dashboard" },
            },
            sections = {
                lualine_a = { "mode" },
                lualine_b = { "branch", diff },
                lualine_c = { "filename", diagnostics },
                lualine_x = { "encoding", "fileformat", filetype },
                lualine_y = { "progress" },
                lualine_z = { location },
            },
            extensions = {
                "nvim-tree",
                "lazy",
                "nvim-dap-ui",
                "toggleterm",
            },
        })
    end,
}
