local set = vim.opt
local g = vim.g

set.background = 'dark'
if (vim.fn.has 'termguicolors' == 1) then
  set.termguicolors = true
end

g.everforest_background = 'hard'
g.everforest_better_performance = 1

vim.cmd[[colorscheme everforest]]
