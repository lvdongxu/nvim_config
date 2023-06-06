local M = {}

M = {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.1',
        cmd = "Telescope",
        keys = {
            { "<Leader>p",  ":Telescope find_files<CR>", desc = "find files" },
            { "<Leader>rs", ":Telescope resume<CR>",     desc = "resume" },
            { "<Leader>o",  ":Telescope oldfiles<CR>",   desc = "old files" },
            { "<Leader>P",  ":Telescope live_grep<CR>",  desc = "grep files" },
        },
        dependencies = { 'nvim-lua/plenary.nvim' }
    },

}

return M
