-- Disable focus resize
function _FOCUS_RESIZE0()
  require("focus").setup({
    autoresize = { enable = false }
  })
end

-- Enable focus resize
function _FOCUS_RESIZE1()
  require("focus").setup({
    autoresize = { enable = true }
  })
end
