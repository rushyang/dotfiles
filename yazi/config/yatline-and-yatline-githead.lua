require("yatline"):setup({
  section_separator = { open = "", close = "" },
  part_separator = { open = "", close = "" },
  inverse_separator = { open = "", close = "" },

	style_a = {
		fg = global_palette.mantle,
		bg_mode = {
			normal = global_palette.blue,
			select = global_palette.maroon,
			un_set = global_palette.red,
		},
	},
	style_b = { bg = global_palette.surface1, fg = global_palette.red},
	style_c = { bg = global_palette.base, fg = global_palette.subtext1},

	permissions_t_fg = global_palette.green,
	permissions_r_fg = global_palette.yellow,
	permissions_w_fg = global_palette.red,
	permissions_x_fg = global_palette.sky,
	permissions_s_fg = global_palette.lavender,

	selected = { icon = "󰻭", fg = global_palette.yellow },
	copied = { icon = "", fg = global_palette.green },
	cut = { icon = "", fg = global_palette.red },

	total = { icon = "󰄒", fg = global_palette.yellow },
	succ = { icon = "", fg = global_palette.green },
	fail = { icon = "", fg = global_palette.red },
	found = { icon = "", fg = global_palette.green },
	processed = { icon = "", fg = global_palette.red },

	tab_width = 20,
	tab_use_inverse = true,

	show_background = false,

	display_header_line = true,
	display_status_line = true,

	header_line = {
		left = {
			section_a = {
				{ type = "string", custom = false, name = "hovered_path"},
			},
			section_b = {
				{ type = "coloreds", custom = false, name = "githead" },
      },
			section_c = {
			},
		},
		right = {
			section_a = {
				{ type = "string", custom = false, name = "tab_num_files"},
        { type = "coloreds", custom = true, name = {{"Total:", global_palette.crust }}},
			},
			section_b = {
				{ type = "coloreds", custom = false, name = "task_workload" },
			},
			section_c = {
				{ type = "coloreds", custom = false, name = "task_states" },
			},
		},
	},

	status_line = {
		left = {
			section_a = {
				{ type = "string", custom = false, name = "tab_mode" },
			},
			section_b = {
				{ type = "string", custom = false, name = "hovered_size" },
			},
			section_c = {
				{ type = "string", custom = false, name = "hovered_name" },
				{ type = "coloreds", custom = false, name = "count" },
			},
		},
		right = {
			section_a = {
				{ type = "string", custom = false, name = "cursor_position" },
			},
			section_b = {
				{ type = "string", custom = false, name = "cursor_percentage" },
			},
			section_c = {
				{ type = "string", custom = false, name = "hovered_file_extension", params = { true } },
				{ type = "coloreds", custom = false, name = "permissions" },
			},
		},
	},
})

require("yatline-githead"):setup({
	show_branch = true,
	branch_prefix = "",
	branch_symbol = "",
	branch_borders = "",

	commit_symbol = " ",

	show_behind_ahead = true,
	behind_symbol = " ",
	ahead_symbol = " ",

	show_stashes = true,
	stashes_symbol = " ",

	show_state = true,
	show_state_prefix = true,
	state_symbol = "󱅉",

	show_staged = true,
	staged_symbol = " ",

	show_unstaged = true,
	unstaged_symbol = " ",

	show_untracked = true,
	untracked_symbol = " ",

	prefix_color = global_palette.pink,
	branch_color = global_palette.green,
	commit_color = global_palette.mauve,
	stashes_color = global_palette.teal,
	state_color = global_palette.lavender,
	staged_color = global_palette.green,
	unstaged_color = global_palette.yellow,
	untracked_color = global_palette.pink,
	ahead_color = global_palette.green,
	behind_color = global_palette.yellow,
})
