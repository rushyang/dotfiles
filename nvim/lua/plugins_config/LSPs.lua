require("mason").setup()
require("mason-lspconfig").setup()

-- auto setup handler for auto config from :h mason-lspconfig-automatic-server-setup
require("mason-lspconfig").setup_handlers {
    function (server_name) -- default handler (optional)
        require("lspconfig")[server_name].setup {}
    end,
    ["rust_analyzer"] = function ()
        require("rust-tools").setup {}
    end
}

-- yamlls
require('lspconfig')['yamlls'].setup{
    capabilities = capabilities,
    on_attach = on_attach,
    flags = lsp_flags,
    settings = {
        yaml = {
          schemas = {
            kubernetes = "*.{yml,yaml}",
            ["http://json.schemastore.org/github-workflow"] = ".github/workflows/*",
            ["http://json.schemastore.org/github-action"] = ".github/action.{yml,yaml}",
            ["http://json.schemastore.org/ansible-stable-2.9"] = "roles/tasks/*.{yml,yaml}",
            ["http://json.schemastore.org/prettierrc"] = ".prettierrc.{yml,yaml}",
            ["http://json.schemastore.org/kustomization"] = "kustomization.{yml,yaml}",
            ["http://json.schemastore.org/ansible-playbook"] = "*play*.{yml,yaml}",
            ["http://json.schemastore.org/chart"] = "chart.{yml,yaml}",
            ["https://json.schemastore.org/dependabot-v2"] = ".github/dependabot.{yml,yaml}",
            ["https://json.schemastore.org/gitlab-ci"] = "*gitlab-ci*.{yml,yaml}",
            ["https://raw.githubusercontent.com/oai/openapi-specification/main/schemas/v3.1/schema.json"] = "*api*.{yml,yaml}",
            ["https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json"] = "*docker-compose*.{yml,yaml}",
            ["https://raw.githubusercontent.com/argoproj/argo-workflows/master/api/jsonschema/schema.json"] = "*flow*.{yml,yaml}",
          },
        },
    },
}
-- Set the active Python language server
vim.g.mason_language_server_python = 'pyright'

-- local lspconfig = require "lspconfig"
--
-- lspconfig.lua_ls.setup {
--   filetypes = { "lua" },
--   settings = {
--     Lua = {
--       runtime = {
--         version = "LuaJIT",
--       },
--       completion = {
--         callSnippet = "Replace",
--       },
--       diagnostics = {
--         globals = { "vim" },
--       },
--       format = {
--         defaultConfig = {
--         },
--       },
--       hint = {
--         enable = true,
--       },
--     },
--   },
-- }
-- GoPls Setup
-- local nvim_lsp = require('lspconfig')
--
-- nvim_lsp.gopls.setup{
--     on_attach = function(client, bufnr)
--         -- Enable autocompletion and hover functionality
--         local opts = { noremap = true, silent = true }
--
--         -- Bind hover functionality to 'K'
--         vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
--
--         -- Other useful LSP mappings
--         vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
--         vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
--         vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
--     end,
--     cmd = {"gopls"},
--     filetypes = {"go", "gomod"},
--     root_dir = nvim_lsp.util.root_pattern("go.mod", ".git"),
--     settings = {
--         gopls = {
--             analyses = {
--                 unusedparams = true,
--                 shadow = true,
--             },
--             staticcheck = true,
--         },
--     },
-- }

local cmp = require'cmp'

cmp.setup({
    snippet = {
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)  -- For `vsnip` users.
        end,
    },
    mapping = {
        ['<C-n>'] = cmp.mapping.select_next_item(),
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.close(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
    },
    sources = {
        { name = 'nvim_lsp' },
        { name = 'buffer' },
    },
})
