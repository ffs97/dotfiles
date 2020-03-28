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
"   Url:        https://github.com/ffs97/dotfiles/vim/colors/thunderclouds.vim
"   License:    The MIT License (MIT)
"
"   A dark vim color scheme heaviliy based on Dracula and One-Half
" ======================================================================================

set background=dark
highlight clear

if exists("syntax_on")
	syntax reset
endif

let g:colors_name = "thunderclouds"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Defining Function for Setting Colors

function! s:set_color(group, fg, bg, attr)
	if type(a:fg) == type([])
		exec "hi " . a:group . " guifg=" . get(a:fg, 0, "NONE") . " ctermfg=" . get(a:fg, 1, "NONE")
	else
		exec "hi " . a:group . " guifg=NONE ctermfg=NONE"
	endif

	if type(a:bg) == type([])
		exec "hi " . a:group . " guibg=" . get(a:bg, 0, "NONE") . " ctermbg=" . get(a:bg, 1, "NONE")
	else
		exec "hi " . a:group . " guibg=NONE ctermbg=NONE"
	endif

	if a:attr != ""
		exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
	else
		exec "hi " . a:group . " gui=NONE cterm=NONE"
	endif
endfun

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Defining Common Colors

let s:bg = [ "#252c36", "none" ]
let s:fg = [ "#fafafa", 231 ]

let s:red = [ "#ff5555", 203 ]
let s:cyan = [ "#3bf2ea", 86 ]
let s:gray = [ "#434356", 59 ]
let s:blue = [ "#afbfff", 147 ]
let s:pink = [ "#ff79c6", 212 ]
let s:opal = [ "#aec7c6", 152 ]
let s:green = [ "#88b369", 107 ]
let s:khaki = [ "#f5f8d6", 230 ]
let s:purple = [ "#800080", 90 ]
let s:orange = [ "#ffb86c", 215 ]
let s:yellow = [ "#f1fa8c", 228 ]
let s:darkgray = [ "#3a3545", "none" ]
let s:seagreen = [ "#56b6b2", 73 ]
let s:wedgewood = [ "#4590a0", 67 ]
let s:darkkhaki = [ "#b5c79b", 151 ]
let s:darkseagreen = [ "#555579", 60 ]

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Setting the Colors

" User interface {{

" Normal {
call s:set_color("Normal", s:fg, s:bg, "")
call s:set_color("NonText", s:bg, s:bg, "")
call s:set_color("EndOfBuffer", s:bg, "", "")
" }

" Cursor {
call s:set_color("Cursor", s:bg, s:opal, "")
call s:set_color("CursorLine", "", s:darkgray, "")
" }

" Column colors {
call s:set_color("ColorColumn", "", s:darkgray, "")
call s:set_color("CursorColumn", "", s:darkgray, "")
" }

" Line Numbers {
call s:set_color("LineNrAbove", "", "", "")
call s:set_color("LineNrBelow", "", "", "")
call s:set_color("LineNr", s:wedgewood, s:bg, "")
call s:set_color("CursorLineNr", s:fg, s:darkgray, "bold")
" }

" Diff {
call s:set_color("DiffAdd", s:green, "", "")
call s:set_color("DiffChange", s:seagreen, "", "")
call s:set_color("DiffDelete", s:red, "", "")
call s:set_color("DiffText", s:blue, "", "")
" }

" Search {
call s:set_color("Search", s:bg, s:yellow, "")
call s:set_color("IncSearch", s:bg, s:yellow, "")
" }

" Messages and texts {
call s:set_color("ModeMsg", s:fg, "", "")
call s:set_color("ErrorMsg", s:red, "", "")
call s:set_color("Title", s:pink, "", "bold")
call s:set_color("MoreMsg", s:yellow, "", "")
call s:set_color("Question", s:yellow, "", "")
call s:set_color("WarningMsg", s:pink, "", "")
call s:set_color("QuickFixLine", s:yellow, "", "")
" }

" Spellcheck {
call s:set_color("SpellRare", "", "", "")
call s:set_color("SpellBad", "", "", "undercurl")
call s:set_color("SpellCap", "", "", "undercurl")
call s:set_color("SpellLocal", "", "", "undercurl")
" }

" Selection (visual) mode {
call s:set_color("Visual", "", s:gray, "")
call s:set_color("VisualNOS", "", s:gray, "")
" }

" Status line (overruled by airline/lightline) {
call s:set_color("StatusLine", s:cyan, s:darkgray, "italic")
call s:set_color("StatusLineNC", s:bg, s:bg, "italic")
call s:set_color("StatusLineTerm", s:cyan, s:darkgray, "italic")
call s:set_color("StatusLineTermNC", s:bg, s:bg, "italic")
" }

" Tab line (overruled by airline/lightline) {
call s:set_color("TabLine", s:seagreen, s:darkgray, "")
call s:set_color("TabLineFill", s:opal, s:darkgray, "")
call s:set_color("TabLineSel", s:cyan, s:bg, "")
" }

" Folding
call s:set_color("Folded", s:seagreen, "", "")
call s:set_color("FoldColumn", s:fg, "", "")

" Signs
call s:set_color("SignColumn", s:orange, "", "")

" Concealed text
call s:set_color("Conceal", s:fg, "", "")

" Matching brackets
call s:set_color("MatchParen", s:cyan, "", "bold,underline")

" Vertical split
call s:set_color("VertSplit", s:darkgray, s:bg, "")

" Special keys
call s:set_color("Special", s:pink, "", "")
call s:set_color("SpecialChar", s:fg, "", "")
call s:set_color("SpecialComment", s:red, "", "")

" Directory text
call s:set_color("Directory", s:blue, "", "")

" Popup menu
call s:set_color("Pmenu", s:fg, s:darkgray, "")
call s:set_color("PmenuSel", s:blue, s:bg, "bold")
call s:set_color("PmenuSbar", "", s:seagreen, "")
call s:set_color("PmenuThumb", "", s:fg, "")

" Miscellaneous
call s:set_color("ExtraWhitespace", "", s:darkgray, "")
match ExtraWhitespace /\s\+$/

" Wild menu
call s:set_color("WildMenu", s:fg, s:gray, "")

"
" TODO: Fix {
" call s:set_color("Menu", "", "", "")
" call s:set_color("Toolbar", "", "", "")
" call s:set_color("Tooltip", "", "", "")
" call s:set_color("Terminal", "", "", "")
" call s:set_color("ToolbarLine", "", "", "")
" call s:set_color("ToolbarButton", "", "", "")
" call s:set_color("Scrollbar", s:bg, s:bg, "")
" }

" }}


" Syntax {{

call s:set_color("Boolean", s:fg, "", "")
call s:set_color("Character", s:green, "", "")
call s:set_color("Comment", s:seagreen, "", "")
call s:set_color("Conditional", s:blue, "", "")
call s:set_color("Conditional", s:yellow, "", "")
call s:set_color("Constant", s:orange, "", "")
call s:set_color("Debug", s:fg, "", "")
call s:set_color("Define", s:red, "", "")
call s:set_color("Delimiter", s:fg, "", "")
call s:set_color("Error", s:red, "", "undercurl")
call s:set_color("Exception", s:purple, "", "")
call s:set_color("Float", s:orange, "", "")
call s:set_color("Function", s:red, "", "bold")
call s:set_color("Identifier", s:darkkhaki, "", "")
call s:set_color("Ignore", s:fg, "", "")
call s:set_color("Include", s:blue, "", "")
call s:set_color("Include", s:yellow, "", "")
call s:set_color("Keyword", s:red, "", "")
call s:set_color("Label", s:cyan, "", "")
call s:set_color("Macro", s:blue, "", "")
call s:set_color("Number", s:orange, "", "")
call s:set_color("Operator", s:fg, "", "")
call s:set_color("PreCondit", s:darkkhaki, "", "")
call s:set_color("PreProc", s:darkkhaki, "", "")
call s:set_color("Repeat", s:blue, "", "")
call s:set_color("Repeat", s:yellow, "", "")
call s:set_color("Statement", s:blue, "", "")
call s:set_color("StorageClass", s:yellow, "", "")
call s:set_color("String", s:khaki, "", "")
call s:set_color("Structure", s:yellow, "", "")
call s:set_color("Tag", s:fg, "", "")
call s:set_color("Todo", s:red, "", "bold,underline")
call s:set_color("Type", s:cyan, "", "")
call s:set_color("Typedef", s:orange, "", "")
call s:set_color("Underlined", "", "", "underline")

" }}

" Vim highlight links {{

hi link vimFunction Function
hi link vimIsCommand PreProc

" }}
