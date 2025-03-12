require("searchjump"):setup({
	unmatch_fg = global_palette.overlay0,
	match_str_fg = global_palette.orange,
	match_str_bg = global_palette.base,
	first_match_str_fg = global_palette.lavender,
	first_match_str_bg = global_palette.base,
	lable_fg = global_palette.green,
	lable_bg = global_palette.base,
	only_current = false, -- only search the current window
	show_search_in_statusbar = false,
	auto_exit_when_unmatch = false,
	enable_capital_lable = false,
	search_patterns = {}, -- demo:{"%.e%d+","s%d+e%d+"}
})
