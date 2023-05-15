if vim.g.neovide then
    require("core.neovide")
end

require("core.settings")
require("core.keymaps")
require("core.begin")

vim.cmd.colorscheme "catppuccin"

