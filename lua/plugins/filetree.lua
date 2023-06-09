return {
    "nvim-tree/nvim-tree.lua",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("nvim-tree").setup({
            disable_netrw = true,
            hijack_netrw = true,
            hijack_cursor = true,
            hijack_unnamed_buffer_when_opening = false,
            sync_root_with_cwd = true,
            update_focused_file = {
                enable = true,
                update_root = false,
            },
            diagnostics = {
                enable = true,
                show_on_dirs = true,
            },
            view = {
                side = "left",
                width = 30,
                preserve_window_proportions = true,
            },
            filesystem_watchers = {
                enable = true,
            },
            actions = {
                open_file = {
                    resize_window = true,
                },
            },
            renderer = {
                root_folder_label = false,
                indent_markers = {
                    enable = true,
                },
                icons = {
                    git_placement = "signcolumn",
                },
            },
        })
    end,
}
