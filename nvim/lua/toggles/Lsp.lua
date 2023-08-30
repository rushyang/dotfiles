-- Define a variable to keep track of the Lsp state
_G.Lsp_enabled = false

-- Function to toggle Lsp
function toggle_Lsp()
  Lsp_enabled = not Lsp_enabled
  if Lsp_enabled then
    vim.cmd('LspStart')
    print('LspStart')
  else
    vim.cmd('LspStop')
    print('LspStop')
  end
end
