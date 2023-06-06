local M = {}

M = {
    {
        "windwp/nvim-autopairs",
        event = "VeryLazy",
        config = function()
            require("nvim-autopairs").setup {}
        end
    },

}

return M
