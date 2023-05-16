return {
    {
        "catppuccin/nvim",
        lazy = true,
        name = "catppuccin",
        config = function()
            require("catppuccin").setup({
                flavour = "latte",
                integrations = {
                    treesitter = true,
                    native_lsp = {
                        enabled = true,
                        virtual_text = {
                            errors = { "italic" },
                            hints = { "italic" },
                            warnings = { "italic" },
                            information = { "italic" },
                        },
                        underlines = {
                            errors = { "underline" },
                            hints = { "underline" },
                            warnings = { "underline" },
                            information = { "underline" },
                        },
                    },
                    cmp = true,
                    illuminate = true,
                    indent_blankline = { enabled = true, colored_indent_levels = false },
                    mason = true,
                    nvimtree = true,
                    semantic_tokens = true,
                },
            })
        end,
    },
}
