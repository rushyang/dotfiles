require("indent_blankline").setup {
   char = '┊',
   show_trailing_blankline_indent = false,
   show_current_context = true,
   show_current_context_start = true,
   indent_blankline_context_char_list = {'┃', '║', '╬', '█'},
   show_first_indent_level = false,
   filetype_exclude = { 'help', 'packer', 'FTerm' },
   buftype_exclude = { 'terminal', 'nofile' },
}
