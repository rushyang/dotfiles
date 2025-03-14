local M = {}

M.setup = function()
    local conform = require("conform")

    conform.setup({
        formatters_by_ft = {
            lua = { "stylua" },
            svelte = { "prettierd", "prettier" },
            astro = { "prettierd", "prettier" },
            javascript = { "prettierd", "prettier" },
            typescript = { "prettierd", "prettier" },
            javascriptreact = { "prettierd", "prettier" },
            typescriptreact = { "prettierd", "prettier" },
            json = { "prettierd", "prettier" },
            graphql = { "prettierd", "prettier" },
            java = { "google-java-format" },
            kotlin = { "ktlint" },
            ruby = { "standardrb" },
            markdown = { "prettierd", "prettier" },
            erb = { "htmlbeautifier" },
            html = { "htmlbeautifier" },
            bash = { "beautysh" },
            proto = { "buf" },
            rust = { "rustfmt" },
            yaml = { "yamlfix" },
            toml = { "taplo" },
            css = { "prettierd", "prettier" },
            scss = { "prettierd", "prettier" },
            sh = { "shellcheck" },
            go = { "gofmt" },
            xml = { "xmllint" },
        },
    })

    -- Auto-format Go files with specific indentation settings
    vim.api.nvim_create_autocmd("FileType", {
        pattern = "go",
        callback = function()
            vim.opt_local.expandtab = false  -- Use tabs instead of spaces
            vim.opt_local.shiftwidth = 4     -- Set indent width
            vim.opt_local.tabstop = 4        -- Tab size
            vim.opt_local.softtabstop = 4    -- Soft tab
        end,
    })

    -- Keybinding to format file or selection
    vim.keymap.set({ "n", "v" }, "<leader>l", function()
        conform.format({
            lsp_fallback = true,
            async = false,
            timeout_ms = 1000,
        })
    end, { desc = "Format file or range (in visual mode)" })
end

return M
