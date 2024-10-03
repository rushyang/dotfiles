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
}
