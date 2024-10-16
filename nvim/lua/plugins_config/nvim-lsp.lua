local nvim_lsp = require('lspconfig')

nvim_lsp.gopls.setup{
    cmd = {"gopls"},
    filetypes = {"go", "gomod"},
    root_dir = nvim_lsp.util.root_pattern("go.mod", ".git"),
    settings = {
        gopls = {
            analyses = {
                unusedparams = true,
                shadow = true,
            },
            staticcheck = true,
        },
    },
    on_attach = function(client, bufnr)
        -- Key mappings for LSP functionality
        local opts = { noremap = true, silent = true }

        -- Hover to see details (bound to 'K')
        vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)

        -- Go to definition (bound to 'gd')
        vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)

        -- Find references (bound to 'gr')
        vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)

        -- Go to implementation (bound to 'gi')
        vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)

        -- Show function signature (bound to '<C-k>')
        vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    end,
}
