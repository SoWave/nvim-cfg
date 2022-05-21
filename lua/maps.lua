local key_mapper = function(mode, key, result)
  vim.api.nvim_set_keymap(
    mode,
    key,
    result,
    {noremap = true, silent = true}
  )
end

key_mapper('', '<up>', '<nop>')
key_mapper('', '<down>', '<nop>')
key_mapper('', '<left>', '<nop>')
key_mapper('', '<right>', '<nop>')
key_mapper('i', 'jj', '<ESC>')
key_mapper('i', 'Jj', '<ESC>')
key_mapper('i', 'jJ', '<ESC>')

key_mapper('n', '<leader>v', '<cmd>CHADopen<cr>')
key_mapper('n', '<leader>l', '<cmd>call setqflist([])<cr>')

key_mapper('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>')
key_mapper('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>')
key_mapper('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>')
key_mapper('n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>')

key_mapper('n', '<leader>ff', '<cmd>lua require("telescope.builtin").find_files()<cr>')
key_mapper('n', '<leader>fg', '<cmd>lua require("telescope.builtin").live_grep()<cr>')
key_mapper('n', '<leader>fb', '<cmd>lua require("telescope.builtin").buffers()<cr>')
key_mapper('n', '<leader>fh', '<cmd>lua require("telescope.builtin").help_tags()<cr>')

