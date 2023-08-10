-- Define a variable to keep track of the wrap state
_G.wrap_enabled = false

-- Function to toggle wrap
function toggle_wrap()
  wrap_enabled = not wrap_enabled
  if wrap_enabled then
    vim.cmd('setlocal wrap')
    print('Wrap enabled')
  else
    vim.cmd('setlocal nowrap')
    print('Wrap disabled')
  end
end

-- Map a key to toggle wrap
vim.api.nvim_set_keymap('n', '<C-Space>ww', ':lua toggle_wrap()<CR>', { noremap = true })
