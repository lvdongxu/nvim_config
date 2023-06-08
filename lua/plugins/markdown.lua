local M = {

    {
        "iamcco/markdown-preview.nvim",
        event = "VeryLazy",
        config = function()
            vim.fn["mkdp#util#install"]()
        end,
    },
    {
        'dhruvasagar/vim-table-mode',
    },



}

return M
