local M = {
    {
        'phaazon/hop.nvim',
        branch = 'v2',
        config = function()
            require'hop'.setup {}
        end
    }

}

return M
