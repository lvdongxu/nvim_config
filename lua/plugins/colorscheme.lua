local M = {
    {
        "sainnhe/sonokai",
        lazy = true,
    },
    {
        "rebelot/kanagawa.nvim"
    },
    {
        'morhetz/gruvbox',
    },
    {
        'tanvirtin/monokai.nvim',
        config = function()
            -- require('monokai').setup { palette = require('monokai').pro }
            require('monokai').setup {  }
        end
    }
}

return M
