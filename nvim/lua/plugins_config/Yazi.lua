vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("yazi").setup({
  open_for_directories = true,  -- If true, opens Yazi instead of netrw for directories
  open_multiple_tabs = false,    -- Open visible splits as Yazi tabs for easy navigation
  floating_window_scaling_factor = 0.9,  -- Floating window size (90% of the editor size)
  yazi_floating_window_border = "rounded",  -- Border style for the floating window
  keymaps = {
    -- open = "<Space>r", -- Open Yazi file manager
    open_on_current = "<Space>o", -- Open Yazi on current file's directory
    show_help = "<F1>", -- Show Yazi help inside Neovim
    focus_change = "<Tab>", -- Switch focus between floating window and Neovim
    yank_path = "y", -- Copy the selected file’s path to clipboard
    yank_relative_path = "Y", -- Copy relative path
    yank_parent_path = "gy", -- Copy parent directory path
    toggle_hidden = ".", -- Show/hide hidden files
  },
  -- hooks = {
  --   yazi_opened = function(preselected_path, yazi_buffer_id, config)
  --     print("Yazi opened with path: " .. preselected_path)
  --   end,
  --   yazi_closed_successfully = function(chosen_file, config)
  --     print("Yazi closed, selected file: " .. chosen_file)
  --   end,
  --   yazi_opened_multiple_files = function(chosen_files, config, state)
  --     print("Multiple files opened: " .. table.concat(chosen_files, ", "))
  --   end,
  -- },
  integrations = {
    grep_in_directory = function(directory)
      if pcall(require, "telescope") then
        require("telescope.builtin").live_grep({ search_dirs = { directory } })
      else
        print("Telescope is not installed")
      end
    end,
  },
})
