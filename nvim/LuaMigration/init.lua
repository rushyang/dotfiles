-- Adding lua/*.lua as package_path
-- local OSHOME = os.getenv("HOME")
-- local nvim_lua_modules = OSHOME .. "/.config/nvim/lua/?.lua"
-- package.path = package.path .. ";" .. nvim_lua_modules

require("settings")                                             -- General config
require("packer_bootstrap")                                     -- Packer - package manager
require("toggles.CoC")                                          -- Toggling CoC in lua as couldn't find direct function to toggle
require("plugins_config")                                       -- Plugins_config loads all individual plugins' config
require("keymaps")                                              -- Keymaps
require("themes")                                               -- Themes, its specific configs and overrides
