-- Each module Separate
require("global")
require("settings")                                             -- General config
require("packer_bootstrap")                                     -- Packer - package manager
require("toggles")                                              -- Separate toggle module calling desired toggles from lua/toggles/
require("plugins_config")                                       -- Plugins_config loads all individual plugins' config
require("themes")                                               -- Themes, its specific configs and overrides
require("keymaps")                                              -- Keymaps
