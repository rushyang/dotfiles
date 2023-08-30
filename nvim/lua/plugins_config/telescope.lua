-- Function to trigger live_grep within a Git project
function telescope_live_grep_in_git_project()
    local git_root = vim.fn.systemlist('git rev-parse --show-toplevel')[1]

    require('telescope.builtin').live_grep({
        cwd = git_root,
        prompt_title = "Live Grep in Git Project",
        attach_mappings = function(prompt_bufnr, map)
            -- Replace default mappings with live_grep
            map('i', '<C-q>', function()
                require('telescope.builtin').live_grep({
                    cwd = git_root,
                    prompt_title = "Live Grep",
                })
            end)
            return true
        end,
    })
end

-- Load Telescope conventional_commits beforehand
require('telescope').load_extension("conventional_commits")
local actions = require("telescope._extensions.conventional_commits.actions")
local picker = require("telescope._extensions.conventional_commits.picker")

-- Enable telescope fzf native, if installed
pcall(require('telescope').load_extension, 'fzf')

-- Telescope config
require('telescope').setup {
  defaults = {
    prompt_prefix = "   ",
    selection_caret = "  ",
    entry_prefix = "  ",
    initial_mode = "insert",
    selection_strategy = "reset",
    sorting_strategy = "ascending",
    layout_strategy = "horizontal",
    layout_config = {
        horizontal = {
            prompt_position = "bottom",
            preview_width = 0.50,
            results_width = 0.5
        },
        vertical = {
            mirror = false
        },
        width = 0.75,
        height = 0.70,
        preview_cutoff = 120
    }
   },
    file_sorter = require("telescope.sorters").get_fuzzy_file,
    file_ignore_patterns = {
        "node_modules",
        ".git",
        "target",
        "vendor"
    },
    generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
    path_display = {shorten = 5},
    winblend = 0,
    border = {},
    borderchars = {"─", "│", "─", "│", "┌", "┐", "┘", "└"},
    color_devicons = true,
    set_env = {["COLORTERM"] = "truecolor"},
    file_previewer = require("telescope.previewers").vim_buffer_cat.new,
    grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
    qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
    buffer_previewer_maker = require("telescope.previewers").buffer_previewer_maker,
    mappings = {
      i = {
        ['<C-u>'] = false,
        ['<C-d>'] = false,
      },
    },
    -- extensions = {
    --     conventional_commits = {
    --         -- picker({
    --             -- action = actions.prompt,
    --             -- include_body_and_footer = true,
    --         -- })
    --         print(vim.inspect(entry))
    --         -- action = actions.prompt,
    --         -- include_body_and_footer = true,
    --     },
    -- },
}

function _Create_conventional_commit()
    local actions = require("telescope._extensions.conventional_commits.actions")
    local picker = require("telescope._extensions.conventional_commits.picker")
    local opts = {}
    opts.prompt_title = "Conventional Commit"
    opts.prompt_prefix = "   "
    opts.attach_mappings = function(prompt_bufnr, map)
        actions.select_default:replace(function()
            local selection = actions.get_selected_entry()
            actions.close(prompt_bufnr)
            vim.cmd("normal! i" .. selection.value)
        end)
        return true
    end
    picker({
        action = actions.prompt,
        include_body_and_footer = false,
    })
    -- require('telescope.builtin').conventional_commits(opts)
end

-- vim.api.nvim_set_keymap("n", "<leader>cc", '<Cmd>lua create_conventional_commit()<CR>',  desc = "Create a conventional commit"})
