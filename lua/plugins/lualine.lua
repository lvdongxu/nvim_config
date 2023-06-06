local M = {
    {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true },
        config = function()
            require("lualine").setup({

            })
        end
    }
}

return M
