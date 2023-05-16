return {
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" },
            },
            workspace = {
                library = {
                    os.getenv('VIMRUNTIME')
                },
            },
            telemetry = {
                enable = false,
            },
        },
    },
}
