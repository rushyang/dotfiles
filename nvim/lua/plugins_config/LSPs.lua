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
