-- Define a variable to keep track of the Noice state
_G.Noice_enabled = true

-- Function to toggle Noice
function toggle_Noice()
  Noice_enabled = not Noice_enabled
  if Noice_enabled then
    vim.cmd(':Noice enable')
    print('Noice enabled')
  else
    vim.cmd(':Noice disable')
    print('Noice disabled')
  end
end
