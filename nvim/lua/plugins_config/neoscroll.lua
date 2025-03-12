require('neoscroll').setup({
  mappings = {                 -- Keys to be mapped to their corresponding default scrolling animation
    '<C-u>', '<C-d>',
    '<C-b>', '<C-f>',
    '<C-y>', '<C-e>',
    'zt', 'zz', 'zb',
  },
  hide_cursor = true,          -- Hide cursor while scrolling
  stop_eof = true,             -- Stop at <EOF> when scrolling downwards
  respect_scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file
  cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
  duration_multiplier = 1.0,   -- Global duration multiplier
  easing = 'linear',           -- Default easing function
  pre_hook = nil,              -- Function to run before the scrolling animation starts
  post_hook = nil,             -- Function to run after the scrolling animation ends
  performance_mode = false,    -- Disable "Performance Mode" on all buffers.
  ignored_events = {           -- Events ignored while scrolling
      'WinScrolled', 'CursorMoved'
  },
})
local neoscroll = require('neoscroll')

-- Define custom scroll key mappings
local mappings = {
  ["<C-u>"] = { "ctrl_u", 250, "sine" },
  ["<C-d>"] = { "ctrl_d", 250, "sine" },
  ["<C-b>"] = { "ctrl_b", 450, "circular" },
  ["<C-f>"] = { "ctrl_f", 450, "circular" },
  ["<C-y>"] = { "scroll", -0.1, 100, { move_cursor = false } },
  ["<C-e>"] = { "scroll", 0.1, 100, { move_cursor = false } },
}

for key, opts in pairs(mappings) do
  if opts[1] == "scroll" then
    vim.keymap.set("n", key, function()
      neoscroll.scroll(opts[2], { move_cursor = opts[4].move_cursor, duration = opts[3] })
    end, { silent = true })
  else
    vim.keymap.set("n", key, function()
      neoscroll[opts[1]]({ duration = opts[2], easing = opts[3] })
    end, { silent = true })
  end
end
