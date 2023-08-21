-- Global Opts
oshome = os.getenv("HOME")
opts = { noremap = true, silent = true }                                  -- opts: options silent
optns = { noremap = true }                                                -- optns: options non-silent
keymap = vim.api.nvim_set_keymap                                          -- Shortern function's name

-- Get_git_tag function
function get_git_tag()
    local git_tag = vim.fn.system('git tag --points-at HEAD 2>/dev/null | xargs'):gsub("\n", "")
    return git_tag ~= "" and git_tag or ""
end

-- get_absolute_path function
function get_absolute_path()
    return vim.fn.expand('%:p')
end

-- Extend mapping options (For Displaying Description in Telescope keymaps)
function eopts(options)
   local eopts= {}
   for k, v in pairs(opts) do
      eopts[k] = v
   end
   for k, v in pairs(options) do
      eopts[k] = v
   end
   return eopts
end
