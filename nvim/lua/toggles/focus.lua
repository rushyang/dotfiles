-- Disable focus resize
function focus_resize_0()
  require("focus").setup({
    autoresize = { enable = false }
  })
end

-- Enable focus resize
function focus_resize_1()
  require("focus").setup({
    autoresize = { enable = true }
  })
end
