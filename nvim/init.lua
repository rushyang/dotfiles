require("global")                                               -- Global functions etc
require("settings")                                             -- General config
require("lazy_bootstrap")                                       -- Moving to Lazy for managing plugins
require("toggles")                                              -- Separate toggle module calling desired toggles from lua/toggles/
require("plugins_config")                                       -- Plugins_config loads all individual plugins' config
require("themes")                                               -- Themes, its specific configs and overrides
require("keymaps")                                              -- Keymaps
