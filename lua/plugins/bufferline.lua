local M = {

    {
        'akinsho/bufferline.nvim',
        version = "*",
        dependencies = 'nvim-tree/nvim-web-devicons',
        config = function()
            vim.opt.termguicolors = true
            require("bufferline").setup({
                options = {
                    style_preset = {
                        require("bufferline").style_preset.no_italic,
                        require("bufferline").style_preset.no_bold
                    },
                    -- 侧边栏配置
                    -- 左侧让出 nvim-tree 的位置，显示文字 File Explorer
                    offsets = {
                        {
                            filetype = "NvimTree",
                            text = "File Explorer",
                            highlight = "Directory",
                            text_align = "left",
                        },
                    },
                    -- 使用 nvim 内置 LSP  后续课程会配置
                    diagnostics = "nvim_lsp",
                    -- 可选，显示 LSP 报错图标
                    ---@diagnostic disable-next-line: unused-local
                    diagnostics_indicator = function(count, level, diagnostics_dict, context)
                        local s = " "
                        for e, n in pairs(diagnostics_dict) do
                            local sym = e == "error" and "X" or (e == "warning" and "W")
                            s = s .. n .. sym
                        end
                        return s
                    end,
                },
            })
        end

    }



}

return M
