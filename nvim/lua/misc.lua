vim.opt.list = true
vim.opt.listchars:append "eol:󱞣"
-- format Go
vim.api.nvim_create_autocmd("FileType", {
    pattern = "go",
    callback = function()
        vim.opt_local.expandtab = false  -- Use tabs instead of spaces
        vim.opt_local.shiftwidth = 2     -- Set indent width
        vim.opt_local.tabstop = 2        -- Tab size
        vim.opt_local.softtabstop = 2    -- Soft tab
    end,
})
