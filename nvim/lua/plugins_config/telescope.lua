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
        file_history_limit = 500,
        prompt_prefix = "🔎 ",
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
            width = 0.85,
            height = 0.85,
            preview_cutoff = 40
        },
        vimgrep_arguments = {
            'rg',
            '--color=never',
            '--no-heading',
            '--with-filename',
            '--line-number',
            '--column',
            '--smart-case',
            '--follow'
            -- '--fixed-strings',  -- Add this to treat patterns as fixed strings
            -- '--pcre2',  -- Use PCRE2 for advanced pattern matching
            -- '-e'  -- Use multiple patterns
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
    extensions = {
        -- advanced_git_search extension (aaronhallaert/advanced-git-search.nvim)
        advanced_git_search = {
            -- Browse command to open commits in browser. Default fugitive GBrowse.
            -- {commit_hash} is the placeholder for the commit hash.
            browse_command = "GBrowse {commit_hash}",
            -- when {commit_hash} is not provided, the commit will be appended to the specified command seperated by a space
            -- browse_command = "GBrowse",
            -- => both will result in calling `:GBrowse commit`

            -- fugitive or diffviea
            diff_plugin = "diffview",
            -- customize git in previewer
            -- e.g. flags such as { "--no-pager" }, or { "-c", "delta.side-by-side=false" }
            git_flags = { "-c", "delta.side-by-side=true" },
            -- customize git diff in previewer
            -- e.g. flags such as { "--raw" }
            git_diff_flags = { "--raw" },
            -- Show builtin git pickers when executing "show_custom_functions" or :AdvancedGitSearch
            show_builtin_git_pickers = false,
            entry_default_author_or_date = "author", -- one of "author" or "date"
            keymaps = {
                -- following keymaps can be overridden
                toggle_date_author = "<C-w>",
                open_commit_in_browser = "<C-o>",
                copy_commit_hash = "<C-y>",
                show_entire_commit = "<C-e>",
            },
            require('telescope').load_extension("advanced_git_search"),

            -- Telescope layout setup
            -- telescope_theme = {
            --     function_name_1 = {
            --         -- Theme options
            --     },
            --     function_name_2 = "dropdown"
            --     -- e.g. realistic example
            --     show_custom_functions = {
            --         layout_config = { width = 0.4, height = 0.4 },
            --     },
            -- },
        },

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
    --
    -- extensions = {
    --     live_grep_args = {
    --     auto_quoting = true, -- enable auto-quoting
    --     }
    }, --Extensions complete
}

-- For the conventional_commits stuff ('olacin/telescope-cc.nvim)'
function _Create_conventional_commit()
    local actions = require("telescope._extensions.conventional_commits.actions")
    local picker = require("telescope._extensions.conventional_commits.picker")
    local opts = {}
    opts.prompt_title = "Conventional Commit"
    opts.prompt_prefix = "🔎 "
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
        -- Setting below as false as body and footer can be set vi
    -- fugitive as its getting invoked after msg
        include_body_and_footer = false,
    })
    -- require('telescope.builtin').conventional_commits(opts)
end

-- require('telescope').load_extension('live_grep_args')

-- vim.api.nvim_set_keymap("n", "<leader>cc", '<Cmd>lua create_conventional_commit()<CR>',  desc = "Create a conventional commit"})

-- Telescope Highlight Groups
-- TelescopeNormal
-- TelescopeBorder
-- TelescopeSelectionCaret
-- TelescopeMatching
-- TelescopePromptNormal
-- TelescopePromptTitle
-- TelescopePromptPrefix
-- TelescopePromptBorder
-- TelescopePreviewTitle
-- TelescopePreviewBorder
-- TelescopeResultsTitle
-- TelescopeResultsBorder
