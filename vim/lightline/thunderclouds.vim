"
"    ███     ████                                  ████
"   ░███    ░░███                                 ░░███
"   ██████   ░███      █████ ████  █████████       ░███   ██████   ████████
"  ░░███░    ░███      ░███ ░███  ░░███░░███    ███████  ███░░███  ░░███░░███
"   ░███     ░███████  ░███ ░███   ░███ ░███   ███░░███ ░███████    ░███ ░░░
"   ░███  █  ░███░░███ ░███ ░███   ░███ ░███  ░███░░███ ░███░░░     ░███
"   ░░████   ████░░███ ░████████   █████░████ ░░██████  ░░███████   █████
"    ░░░░   ░░░░  ░░░  ░░░░░░░░   ░░░░░ ░░░░   ░░░░░░    ░░░░░░░   ░░░░░
"                                          ████                            ████
"                 ██                     ░░███                           ░░███
"               ███              ██████   ░███    ██████  █████ ████      ░███   █████
"             ████              ███░░███  ░███   ███░░███ ░███ ░███    ███████ ░███░░
"           █████              ░███ ░░░   ░███  ░███ ░███ ░███ ░███   ███░░███  ░████
"             ████             ░███  ███  ░███  ░███ ░███ ░███ ░███  ░███░░███  ░░░███
"            ███               ░░██████   █████ ░░██████  ░████████  ░░██████   █████
"           ██                  ░░░░░░   ░░░░░   ░░░░░░   ░░░░░░░░    ░░░░░░   ░░░░░
"
" ======================================================================================
"   Name:       thunder⚡clouds
"   Author:     Gurpreet Singh
"   Url:        https://github.com/ffs97/dotfiles/vim/lightline/thunderclouds.vim
"   License:    The MIT License (MIT)
"
"   A dark vim lighline color scheme heaviliy based on Dracula and One-Half
" ======================================================================================

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Defining Common Colors

let s:bg = [ "#252c36", 17 ]
let s:fg = [ "#fafafa", 231 ]

let s:red = [ "#ff5555", 203 ]
let s:blue = [ "#afbfff", 147 ]
let s:green = [ "#88b369", 107 ]
let s:purple = [ "#800080", 90 ]
let s:orange = [ "#ffb86c", 215 ]
let s:yellow = [ "#f1fa8c", 228 ]
let s:darkgray = [ "#3a3545", 50 ]
let s:darkkhaki = [ "#b5c79b", 151 ]

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configuring Lightline

let s:p.inactive.left   = [ [ s:darkgray, s:bg ], [ s:darkgray, s:bg ] ]
let s:p.inactive.middle = [ [ s:darkgray, s:bg ] ]
let s:p.inactive.right  = [ [ s:darkgray, s:bg ] ]

let s:p.normal.left    = [ [ s:fg, s:green, 'bold' ], [ s:fg, s:darkgray ] ]
let s:p.normal.middle  = [ [ s:fg, s:bg ] ]
let s:p.normal.right   = [ [ s:fg, s:green ], [ s:fg, s:darkgray ] ]
let s:p.normal.error   = [ [ s:red, s:bg ] ]
let s:p.normal.warning = [ [ s:orange, s:bg ] ]

let s:p.insert.left    = [ [ s:fg, s:blue, 'bold' ], [ s:fg, s:darkgray ] ]
let s:p.insert.right   = [ [ s:fg, s:blue ], [ s:fg, s:darkgray ] ]

let s:p.replace.left   = [ [ s:fg, s:red, 'bold' ], [ s:fg, s:darkgray ] ]
let s:p.replace.right  = [ [ s:fg, s:red ], [ s:fg, s:darkgray ] ]

let s:p.visual.left    = [ [ s:fg, s:purple, 'bold' ], [ s:fg, s:darkgray ] ]
let s:p.visual.right   = [ [ s:fg, s:purple ], [ s:fg, s:darkgray ] ]

let s:p.tabline.left   = [ [ s:fg, s:bg ] ]
let s:p.tabline.tabsel = [ [ s:fg, s:green, 'bold' ] ]
let s:p.tabline.middle = [ [ s:darkgray, s:bg ] ]
let s:p.tabline.middle = [ [ s:darkgray, s:bg ] ]
let s:p.tabline.right  = [ [ s:fg, s:darkkhaki ] ]

let g:lightline#colorscheme#thunderclouds#palette = lightline#colorscheme#flatten(s:p)
