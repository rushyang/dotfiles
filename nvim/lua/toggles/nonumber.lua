-- Define a variable to keep track of the nonumber state
_G.nonumber_enabled = false

-- Function to toggle nonumber
function toggle_nonumber()
  nonumber_enabled = not nonumber_enabled
  if nonumber_enabled then
    vim.cmd('setlocal number')
    print('nonumber enabled')
  else
    vim.cmd('setlocal nonumber')
    print('nonumber disabled')
  end
end

-- Map a key to toggle nonumber
vim.api.nvim_set_keymap('n', '<C-Space><C-\\>', ':lua toggle_nonumber()<CR>', { noremap = true, silent = true })
