-- Determine Yazi's config directory more dynamically
local config_dir = os.getenv("XDG_CONFIG_HOME") or (os.getenv("HOME") .. "/.config")
config_dir = config_dir .. "/yazi/config/"

-- Automatically bootstrap package.toml on startup
-- local plugin = require("yazi.plugin")
-- plugin.install()

-- Now use `config_dir` dynamically for all dofile() calls
dofile(config_dir .. "global.lua")
dofile(config_dir .. "color_palette.lua")

-- Plugin Configurations
dofile(config_dir .. "searchjump.lua")
dofile(config_dir .. "yatline-and-yatline-githead.lua")
dofile(config_dir .. "bookmarks.lua")

-- One liner configs
-- Full-border
require("full-border"):setup({
	type = ui.Border.ROUNDED,
})
-- Zoxide
require("zoxide"):setup({
	update_db = true,
})

require("session"):setup({
	sync_yanked = true,
})

require("git"):setup()

require("fg"):setup({
	default_action = "jump",
})

-- Relative motitions config
require("relative-motions"):setup({ show_numbers="absolute", show_motion = true, enter_mode ="first" })

require("auto-layout")
