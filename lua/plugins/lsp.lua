local M = {

    {
        "williamboman/mason.nvim",
        --		event = "VeryLazy",
        build = ":MasonUpdate", -- :MasonUpdate updates registry contents
        config = function()
            require("mason").setup()
        end,
    },
    {
        "neovim/nvim-lspconfig",
        --		event = "VeryLazy",
        dependencies = { 'williamboman/mason-lspconfig.nvim' },
        config = function()
            require("mason-lspconfig").setup()
        end
    },
    {
        "folke/neodev.nvim",
        event = "VeryLazy",
        config = function()
            require("neodev").setup({})
        end
    },
    {
        "hrsh7th/nvim-cmp",
        event = "VeryLazy",
        dependencies = {
            'neovim/nvim-lspconfig',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-cmdline',
            'hrsh7th/nvim-cmp',
            'L3MON4D3/LuaSnip',
        },
    },
    {
        "jose-elias-alvarez/null-ls.nvim",
        event = "VeryLazy",
    },

}

return M
