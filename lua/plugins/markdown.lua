local M = {

    {
        "iamcco/markdown-preview.nvim",
        event = "VeryLazy",
        config = function()
            vim.fn["mkdp#util#install"]()
        end,
    },



}

return M
