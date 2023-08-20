-- Define a variable to keep track of the spell check state
_G.spell_check_enabled = false

-- Function to toggle spell check
function toggle_spell_check()
  spell_check_enabled = not spell_check_enabled
  if spell_check_enabled then
    vim.cmd('setlocal spell')
    print('Spell check enabled')
  else
    vim.cmd('setlocal nospell')
    print('Spell check disabled')
  end
end

-- Map a key to toggle spell check
vim.api.nvim_set_keymap('n', '<F5>', ':lua toggle_spell_check()<CR>', { noremap = true })
