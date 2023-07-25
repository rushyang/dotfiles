-- Define a variable to keep track of the Coc state
_G.CoC_enabled = false

-- Function to toggle Coc
function toggle_CoC()
  CoC_enabled = not CoC_enabled
  if CoC_enabled then
    vim.cmd('CocEnable')
    -- print('Coc enabled')
  else
    vim.cmd('CocDisable')
    -- print('Coc disabled')
  end
end

-- Map a key to toggle Coc
vim.api.nvim_set_keymap('n', '<F2>', ':lua toggle_CoC()<CR>', { noremap = true })
