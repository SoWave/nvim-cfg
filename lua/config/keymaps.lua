local key_map = function(mode, key, result)
  vim.api.nvim_set_keymap(
    mode,
    key,
    result,
    {noremap = true, silent = true}
  )
end

local map = vim.keymap.set

-- Disable arrow keys
key_map('', '<up>', '<nop>')
key_map('', '<down>', '<nop>')
key_map('', '<left>', '<nop>')
key_map('', '<right>', '<nop>')

-- Center when going up or down
key_map('n', '<C-u>', '<C-u>zz')
key_map('n', '<C-d>', '<C-d>zz')

-- Move to window with ctrl + hjkl keys
key_map('n', '<C-h>', '<C-w>h')
key_map('n', '<C-j>', '<C-w>j')
key_map('n', '<C-k>', '<C-w>k')
key_map('n', '<C-l>', '<C-w>l')

-- Move lines
key_map('n', '<A-j>', '<cmd>m .+1<cr>==')
key_map('n', '<A-k>', '<cmd>m .-2<cr>==')
key_map('i', '<A-j>', '<esc><cmd>m .-2<cr>==gi')
key_map('i', '<A-k>', '<esc><cmd>m .-2<cr>==gi')
key_map('v', '<A-j>', ":m '>+1<cr>gv=gv")
key_map('v', '<A-k>', ":m '<-2<cr>gv=gv")

-- Clear search with esc
key_map('n', '<esc>', '<cmd>noh<cr><esc>')
key_map('i', '<esc>', '<cmd>noh<cr><esc>')

-- Add undo break points
key_map('i', ',', ',<c-g>u')
key_map('i', '.', '.<c-g>u')
key_map('i', ';', ';<c-g>u')

-- Keywordprg
key_map('n', '<leader>K', '<cmd>norm! K<cr>')

-- Better indent
key_map('v', '<', '<gv')
key_map('v', '>', '>gv')

-- Location and quickfix list
key_map('n', '<leader>xl', '<cmd>lopen<cr>')
key_map('n', '<leader>xq', '<cmd>copen<cr>')

map('n', '[q', vim.cmd.cprev)
map('n', ']q', vim.cmd.cnext)

-- Diagnostic
local diagnostic_goto = function(next, severity)
  local go = next and vim.diagnostic.goto_next or vim.diagnostic.goto_prev
  severity = severity and vim.diagnostic.severity[severity] or nil
  return function()
    go({ severity = severity })
  end
end
map('n', '<leader>cd', vim.diagnostic.open_float)
map('n', ']d', diagnostic_goto(true))
map('n', '[d', diagnostic_goto(false))
map('n', ']e', diagnostic_goto(true, 'ERROR'))
map('n', '[e', diagnostic_goto(false, 'ERROR'))
map('n', ']w', diagnostic_goto(true, 'WARN'))
map('n', '[w', diagnostic_goto(false, 'WARN'))

