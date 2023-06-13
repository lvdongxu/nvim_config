local M = {

    {
        'winston0410/range-highlight.nvim',
        dependencies = { 'winston0410/cmd-parser.nvim' },
        config = function()
            require("range-highlight").setup {}
        end
    }






}

return M
