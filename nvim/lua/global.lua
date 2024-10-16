-- Global Opts
_OSHOME = os.getenv("HOME")
local opts = { noremap = true, silent = true }                                  -- opts: options silent

-- Get_git_tag function
function _Get_git_tag()
    local git_tag = vim.fn.system('git tag --points-at HEAD 2>/dev/null | xargs'):gsub("\n", "")
    return git_tag ~= "" and git_tag or ""
end

-- get_absolute_path function
function _Get_absolute_path()
    local file_path = vim.fn.expand('%:p')
    local home_dir = vim.fn.expand('$HOME')

    if vim.startswith(file_path, home_dir) then
        return '~' .. string.sub(file_path, #home_dir + 1)
    else
        return file_path
    end
end

-- Extend mapping options (For Displaying Description in Telescope keymaps)
function _Eopts(options)
   local eopts= {}
   for k, v in pairs(opts) do
      eopts[k] = v
   end
   for k, v in pairs(options) do
      eopts[k] = v
   end
   return eopts
end

-- Open help in a vertical split on the left
vim.api.nvim_create_autocmd("FileType", {
  pattern = "help",
  callback = function()
    vim.defer_fn(function()
      vim.cmd("wincmd L")  -- Move the help window to the left
      vim.cmd("wincmd R")  -- Switch the help window with the main window
    end, 10)  -- Small delay (in milliseconds)
  end,
})
