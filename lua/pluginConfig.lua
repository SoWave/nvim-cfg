require('cmpConf')

require('lspConf')

local chadtree_settings = { ['view.open_direction'] = 'right' }
vim.api.nvim_set_var("chadtree_settings", chadtree_settings)

require('lualine').setup()

require('Comment').setup()

require('nvim-autopairs').setup()

require('telescope').setup{ defaults = { file_ignore_patterns = {"node_modules"} } }
