require('gitsigns').setup {
  signs = {
    add          = { text = '' },
    change       = { text = '󰜥' },
    delete       = { text = '󰞒' },
    topdelete    = { text = '󰞕' },
    changedelete = { text = '󱣳' },
    untracked    = { text = '┆' },
  },
  signcolumn = true,  -- Toggle with `:Gitsigns toggle_signs`
  numhl      = true, -- Toggle with `:Gitsigns toggle_numhl`
  linehl     = false, -- Toggle with `:Gitsigns toggle_linehl`
  word_diff  = false, -- Toggle with `:Gitsigns toggle_word_diff`
  watch_gitdir = {
    follow_files = true
  },
  attach_to_untracked = true,
  current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
  current_line_blame_opts = {
    virt_text = true,
    virt_text_pos = 'right_align', -- 'eol' | 'overlay' | 'right_align'
    delay = 1000,
    ignore_whitespace = true,
  },
  current_line_blame_formatter = '<author>, <author_time:%Y-%m-%d> - <summary>',
  sign_priority = 100,
  update_debounce = 100,
  status_formatter = nil, -- Use default
  max_file_length = 40000, -- Disable if file is longer than this (in lines)
  preview_config = {
    -- Options passed to nvim_open_win
    border = 'single',
    style = 'minimal',
    relative = 'cursor',
    row = 0,
    col = 1
  },
  yadm = {
    enable = false
  },
  on_attach = function(bufnr)
    local gs = package.loaded.gitsigns

    local function map(mode, l, r, opts)
      opts = opts or {}
      opts.buffer = bufnr
      vim.keymap.set(mode, l, r, opts)
    end

    -- Navigation
    map('n', 'L', function()
      if vim.wo.diff then return ']c' end
      vim.schedule(function() gs.next_hunk() end)
      return '<Ignore>'
    end, {expr=true})

    map('n', 'H', function()
      if vim.wo.diff then return '[c' end
      vim.schedule(function() gs.prev_hunk() end)
      return '<Ignore>'
    end, {expr=true})

   -- Actions
   map('n', '<leader>hp', gs.preview_hunk)
   map('n', '<leader>hr', gs.reset_hunk)
   map('n', '<leader>tb', gs.toggle_current_line_blame)
   map('n', '<leader>td', gs.toggle_deleted)
   map('n', '<leader>hd', gs.diffthis)
   map('n', '<leader>S', gs.stage_hunk)
  end
}
