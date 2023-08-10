-- vim.opt.list = true
-- vim.opt.listchars:append "eol:↴"

require("indent_blankline").setup {
   -- for example, context is off by default, use this to turn it on
   -- show_end_of_line = true,
   show_current_context = true,
   show_current_context_start = true,
   indent_blankline_context_char_list = {'┃', '║', '╬', '█'},
   show_first_indent_level = false,
   filetype_exclude = { 'help', 'packer', 'FTerm' },
   buftype_exclude = { 'terminal', 'nofile' },
}
