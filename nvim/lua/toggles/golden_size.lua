-- Golden_Size global on/off toggle
vim.api.nvim_set_var("golden_size_off", 0)

function GoldenSizeToggle()
  local current_value = vim.api.nvim_get_var("golden_size_off")
  vim.api.nvim_set_var("golden_size_off", current_value == 1 and 0 or 1)
end

local function golden_size_ignore()
  return vim.api.nvim_get_var("golden_size_off")
end

local golden_size = require("golden_size")
-- set the callbacks, preserve the defaults
golden_size.set_ignore_callbacks({
  { golden_size_ignore },
})
