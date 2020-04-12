-- =====================================================================================
--   Name:       luacheckrc
--   Author:     Gurpreet Singh
--   Url:        https://github.com/ffs97/dotfiles/luacheckrc
--   License:    The MIT License (MIT)
--
--   Configuration for luacheck (configured for awesomewm development)
--
--   vi: ft=lua
-- =====================================================================================

-- Allow defining global variables
allow_defined = true

-- New globals for awesomewm config
new_read_globals = {
    "awesome",
    "screen",
    "client",
    "session_bus",
    "system_bus",
    "filemanager",
    "scripts_dir",
    "theme_name",
    "theme_dir",
    "config_dir",
    "terminal",
    "editor",
    "ntags",
    "mouse",
    "root"
}

-- ignore these warnings
ignore = {"111", "131", "122"}
