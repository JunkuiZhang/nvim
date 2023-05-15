return {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    dependencies = {"nvim-tree/nvim-web-devicons"},
    -- lazy = false,
    config = function()
        require("lualine").setup({
            extensions = {
                "nvim-tree",
                "lazy",
            }
        })
    end,
}
