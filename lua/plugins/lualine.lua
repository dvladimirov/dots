return {
    'nvim-lualine/lualine.nvim',
    dependencies = {
        'nvim-tree/nvim-web-devicons',
        'linrongbin16/lsp-progress.nvim',
    },
    config = function(_, opts)
        require('lualine').setup {
            options = {
                theme = require('lualine.themes.codedark'),
            },
            sections = {
                lualine_c = {
                    'filename',
                    {
                        file_status = true, 
                        newfile_status = false,
                        path = 1,
                        shorting_target = 40,
                        symbols = {
                            modified = '[+]',
                            readonly = '[-]',
                            unnamed = '[No Name]',
                            newfile = '[New]',
                        }
                    }
                },
            }
        }
    end
}
