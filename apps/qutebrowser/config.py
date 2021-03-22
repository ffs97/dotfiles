#
#                        ██
#                       ░██      ██
#    █████   █████ ███  █████   ░░      █████         █████████
#  ░███░░██  ░███ ░██  ░░███     ██    ███░░██       █ ░█░░██░
#  ░███ ░██  ░███ ░██   ░██     ░██   ░██████       ░ ░█  ░██
#  ░░██████  ░███ ░██   ░███    ░██   ░███░░          ██  ░██ █
#   ░░░░░██  ░███████   ░░███   ████  ░░██████   ██  ██   ░░██
#       ░██  ░░░░░░░     ░░░   ░░░░    ░░░░░░   ░░  ░░     ░░
#       ░██
#       ░░
#
# ======================================================================================
#   Name:       qutebrowser-config
#   Author:     Gurpreet Singh
#   Url:        https://github.com/ffs97/dotfiles/qutebrowser/config.py
#   License:    The MIT License (MIT)
#
#   Qutebrowser configuration file which loads settings from accomponying yaml files
# ======================================================================================

import os
import re
import json
import pywal

from pywal.settings import CACHE_DIR as PYWAL_CACHE_DIR


def load_colors():
    colors_ = pywal.theme.file(os.path.join(PYWAL_CACHE_DIR, "colors.json"))

    colors = dict()
    for key, value in colors_["special"].items():
        colors[key] = value

    colors = dict()
    for key, value in colors_["colors"].items():
        colors[key] = value

    return colors


def parse_settings(path):
    cur_indent = -1
    keys = []

    colors = load_colors()

    def replace_variable_match(var):
        var = var.group()
        return colors[var.strip("$")]

    with open(path) as f:
        for line in f:
            if line.strip() == "" or line[0] == "#":
                continue

            indent = (len(line) - len(line.lstrip())) >> 2

            key, val = [x.strip() for x in line.split(":", 1)]

            while indent <= cur_indent:
                keys.pop()
                cur_indent -= 1

            cur_indent = indent

            keys.append(key)

            if val != "":
                val = re.sub(r"\$\w+", replace_variable_match, val)

                config.set(".".join(keys), json.loads(val))


parse_settings(config.configdir / "settings.yml")
parse_settings(config.configdir / "colors.yml")

# Manually setting some rules

c.aliases = {
    "cs": "config-source",
    "w": "session-save",
    "wq": "quit --save",
    "q": "quit",
    "noproxy": "set content.proxy none",
    "sysproxy": "set content.proxy system",
    "nkn": "set content.proxy http://nknproxy.iitk.ac.in:3128",
    "tor": "set content.proxy socks://localhost:9050",
}

c.bindings.key_mappings = {
    "<Enter>": "<Return>",
    "<Ctrl-Enter>": "<Ctrl-Return>",
}

c.hints.next_regexes = [
    "\\bnext\\b",
    "\\bmore\\b",
    "\\bnewer\\b",
    "\\b[>→≫]\\b",
    "\\b(>>|»)\\b",
    "\\bcontinue\\b",
]
c.hints.prev_regexes = [
    "\\bprev(ious)?\\b",
    "\\bback\\b",
    "\\bolder\\b",
    "\\b[<←≪]\\b",
    "\\b(<<|«)\\b",
]

# Adding keybinds

config.unbind("<Ctrl-Q>")
config.unbind("<Ctrl-Tab>")

config.bind("<Alt-Left>", "tab-prev")
config.bind("<Alt-Right>", "tab-next")
config.bind("<Alt-Shift-Left>", "tab-move -")
config.bind("<Alt-Shift-Right>", "tab-move +")
config.bind("<Ctrl-r>", "reload")
config.bind("<Ctrl-Shift-r>", "reload -f")
config.bind("<Ctrl-Tab>", "tab-next")
config.bind("<Ctrl-Shift-Tab>", "tab-prev")
config.bind("<Ctrl-I>", "enter-mode passthrough")
config.bind("<Backspace>", "back")
config.bind("<Shift-Backspace>", "forward")
config.bind("tt", "open -t")
config.bind("t<Left>", "back -t")
config.bind("t<Right>", "forward -t")

config.bind(
    "xx", "config-cycle statusbar.hide ;; config-cycle tabs.show always switching"
)
config.bind("xt", "config-cycle tabs.show always switching")
config.bind("xb", "config-cycle statusbar.hide")

config.bind("<Alt-Left>", "tab-prev", mode="insert")
config.bind("<Alt-Right>", "tab-next", mode="insert")
config.bind("<Ctrl-E>", "open-editor", mode="insert")

config.bind("<Alt-Left>", "tab-prev", mode="passthrough")
config.bind("<Alt-Right>", "tab-next", mode="passthrough")
