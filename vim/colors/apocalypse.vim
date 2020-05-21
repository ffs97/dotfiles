"
"  ███████████████████████████████████████████████████████████████████████████████████
"                                              ░██                                     
"   █████   ███████   █████    █████   █████   ░██  ██     ██  ███████   ████   █████ 
"  ░░░░░██ ░░███░░█  ███░░██  ███░░██ ░░░░░██  ░██  ███    ██ ░░███░░█ ░███░   ███░░██
"   ██████  ░███ ░█ ░███ ░██ ░███ ░░   ██████  ░██ ░░███  ██   ░███ ░█  ░███  ░██████ 
"  ███░░██  ░██████ ░███ ░██ ░███  ██ ███░░██  ░██  ░░█████    ░██████  ░░░██ ░███░░  
"  ░███████ ░███░░  ░░█████  ░░█████  ░███████ ████  ░░░██     ░███░░   ████  ░░██████
"  ░░░░░░░  ░██      ░░░░░    ░░░░░   ░░░░░░░ ░░░░   █  ██     ░██     ░░░░    ░░░░░░ 
"           ████                                    ░ ███      ████    
"          ░░░░                                      ░░░      ░░░░     
"
" ======================================================================================
" Name: apocalypse
" Author: Gurpreet Singh
" Url: https://github.com/ffs97/dotfiles/vim/colors/apocalypse.vim
" License: The MIT License (MIT)
"
" A black vim color scheme based on Dracula and One-Half
" ======================================================================================

set background=dark
set t_Co=16
highlight clear

if exists("syntax_on")
syntax reset
endif

let g:colors_name = "apocalypse"

" --------------------------------------------------------------------------------------
" Setting the Colors

" User interface {{

" Normal {
hi Normal
    \   ctermbg=NONE    ctermfg=15      cterm=NONE
    \     guibg=#241b2e   guifg=#f7f7f7   gui=NONE
hi NonText
    \   ctermbg=NONE    ctermfg=0       cterm=NONE
    \     guibg=NONE      guifg=#241b2e   gui=NONE
hi EndOfBuffer
    \   ctermbg=NONE    ctermfg=0       cterm=NONE
    \     guibg=NONE      guifg=#241b2e   gui=NONE
" }

" Cursor {
hi Cursor
    \   ctermbg=14      ctermfg=0       cterm=NONE
    \     guibg=#00ffff   guifg=#241b2e   gui=NONE
hi CursorLine
    \   ctermbg=8       ctermfg=NONE    cterm=NONE
    \     guibg=#34324a   guifg=NONE      gui=NONE
" }

" Column colors {
hi ColorColumn
    \   ctermbg=8       ctermfg=NONE    cterm=NONE
    \     guibg=#34324a   guifg=NONE      gui=NONE
hi CursorColumn
    \   ctermbg=8       ctermfg=NONE    cterm=NONE
    \     guibg=#34324a   guifg=NONE      gui=NONE
" }

" Line Numbers {
hi LineNrAbove
    \   ctermbg=NONE    ctermfg=NONE    cterm=NONE
    \     guibg=NONE      guifg=NONE      gui=NONE
hi LineNrBelow
    \   ctermbg=NONE    ctermfg=NONE    cterm=NONE
    \     guibg=NONE      guifg=NONE      gui=NONE
hi LineNr
    \   ctermbg=NONE    ctermfg=6       cterm=NONE
    \     guibg=NONE      guifg=#5baabb   gui=NONE
hi CursorLineNr
    \   ctermbg=8       ctermfg=15      cterm=bold
    \     guibg=#3a3545   guifg=#f7f7f7   gui=bold
" }

" Diff {
hi DiffAdd
    \   ctermbg=NONE    ctermfg=2       cterm=NONE
    \     guibg=NONE      guifg=#72c373   gui=NONE
hi DiffChange
    \   ctermbg=NONE    ctermfg=14      cterm=NONE
    \     guibg=NONE      guifg=#00ffff   gui=NONE
hi DiffDelete
    \   ctermbg=NONE    ctermfg=9       cterm=NONE
    \     guibg=NONE      guifg=#ff6a6a   gui=NONE
hi DiffText
    \   ctermbg=NONE    ctermfg=4       cterm=NONE
    \     guibg=NONE      guifg=#7372c3   gui=NONE
" }

" Search {
hi Search
    \   ctermbg=11      ctermfg=0       cterm=NONE
    \     guibg=#ffffb3   guifg=#241b2e   gui=NONE
hi IncSearch
    \   ctermbg=11      ctermfg=0       cterm=NONE
    \     guibg=#ffffb3   guifg=#241b2e   gui=NONE
" }

" Messages and texts {
hi ErrorMsg
    \   ctermbg=NONE    ctermfg=1       cterm=NONE
    \     guibg=NONE      guifg=#ff4971   gui=NONE
hi WarningMsg
    \   ctermbg=NONE    ctermfg=9       cterm=NONE
    \     guibg=NONE      guifg=#ff6a6a   gui=NONE
hi Title
    \   ctermbg=NONE    ctermfg=13      cterm=NONE
    \     guibg=NONE      guifg=#ff79c6   gui=NONE
hi ModeMsg
    \   ctermbg=NONE    ctermfg=15      cterm=NONE
    \     guibg=NONE      guifg=#f7f7f7   gui=NONE
hi MoreMsg
    \   ctermbg=NONE    ctermfg=11      cterm=NONE
    \     guibg=NONE      guifg=#ffffb3   gui=NONE
hi Question
    \   ctermbg=NONE    ctermfg=11      cterm=NONE
    \     guibg=NONE      guifg=#ffffb3   gui=NONE
hi QuickFixLine
    \   ctermbg=NONE    ctermfg=11      cterm=NONE
    \     guibg=NONE      guifg=#ffffb3   gui=NONE
" }

" Spellcheck {
hi SpellRare
    \   ctermbg=NONE    ctermfg=NONE    cterm=NONE
    \     guibg=NONE      guifg=NONE      gui=NONE
hi SpellBad
    \   ctermbg=NONE    ctermfg=NONE    cterm=undercurl
    \     guibg=NONE      guifg=NONE      gui=undercurl   guisp=#ff4971
hi SpellCap
    \   ctermbg=NONE    ctermfg=NONE    cterm=undercurl
    \     guibg=NONE      guifg=NONE      gui=undercurl   guisp=#ff4971
hi SpellLocal
    \   ctermbg=NONE    ctermfg=NONE    cterm=undercurl
    \     guibg=NONE      guifg=NONE      gui=undercurl   guisp=#ff4971
" }

" Selection (visual) mode {
hi Visual
    \   ctermbg=8       ctermfg=NONE    cterm=NONE
    \     guibg=#34324a   guifg=NONE      gui=NONE
hi VisualNOS
    \   ctermbg=8       ctermfg=NONE    cterm=NONE
    \     guibg=#34324a   guifg=NONE      gui=NONE
" }

" Status line {
hi StatusLine
    \   ctermbg=8       ctermfg=15      cterm=NONE
    \     guibg=#34324a   guifg=#f7f7f7   gui=NONE
hi StatusLineNC
    \   ctermbg=NONE    ctermfg=15      cterm=NONE
    \     guibg=NONE      guifg=#f7f7f7   gui=NONE
hi StatusLineTerm
    \   ctermbg=8       ctermfg=15      cterm=NONE
    \     guibg=#34324a   guifg=#f7f7f7   gui=NONE
hi StatusLineTermNC
    \   ctermbg=NONE    ctermfg=15      cterm=NONE
    \     guibg=NONE      guifg=#f7f7f7   gui=NONE
" }

" Tab line {
hi TabLine
    \   ctermbg=8       ctermfg=7       cterm=NONE
    \     guibg=#34324a   guifg=#d9d9d9   gui=NONE
hi TabLineFill
    \   ctermbg=8       ctermfg=7       cterm=NONE
    \     guibg=#34324a   guifg=#d9d9d9   gui=NONE
hi TabLineSel
    \   ctermbg=10      ctermfg=15      cterm=bold
    \     guibg=#72c373   guifg=#f7f7f7   gui=NONE
" }

" Folding {
hi Folded
    \   ctermbg=NONE    ctermfg=6       cterm=NONE
    \     guibg=NONE      guifg=#5baabb   gui=NONE
hi FoldColumn
    \   ctermbg=NONE    ctermfg=10      cterm=NONE
    \     guibg=NONE      guifg=#aadbaa   gui=NONE
" }

" Signs {
hi SignColumn
    \   ctermbg=NONE    ctermfg=9       cterm=NONE
    \     guibg=NONE      guifg=#ff6a6a   gui=NONE
" }

" Concealed text {
hi Conceal
    \   ctermbg=NONE    ctermfg=15      cterm=NONE
    \     guibg=NONE      guifg=#f7f7f7   gui=NONE
" }

" Matching brackets {
hi MatchParen
    \   ctermbg=NONE    ctermfg=14      cterm=bold,underline
    \     guibg=NONE      guifg=#00ffff   gui=bold,underline
" }

" Vertical split {
hi VertSplit
    \   ctermbg=NONE    ctermfg=8       cterm=NONE
    \     guibg=NONE      guifg=#34324a   gui=NONE
" }

" Directory text {
hi Directory
    \   ctermbg=NONE    ctermfg=4       cterm=NONE
    \     guibg=NONE      guifg=#7372c3   gui=NONE
" }

" Popup menu {
hi Pmenu
    \   ctermbg=8       ctermfg=7       cterm=NONE
    \     guibg=#34324a   guifg=#d9d9d9   gui=NONE
hi PmenuSel
    \   ctermbg=4       ctermfg=15      cterm=NONE
    \     guibg=#7372c3   guifg=#f7f7f7   gui=NONE
hi PmenuSbar
    \   ctermbg=15      ctermfg=NONE    cterm=NONE
    \     guibg=#f7f7f7   guifg=NONE      gui=NONE
hi PmenuThumb
    \   ctermbg=2       ctermfg=NONE    cterm=NONE
    \     guibg=#72c373   guifg=NONE      gui=NONE
" }

" Miscellaneous {
hi ExtraWhitespace
    \   ctermbg=8       ctermfg=NONE    cterm=NONE
    \     guibg=#34324a   guifg=NONE      gui=NONE
match   ExtraWhitespace    /\s\+$/

hi OverLength
    \   ctermbg=9       ctermfg=NONE    cterm=NONE
    \     guibg=#ff6a6a   guifg=#251b2e   gui=NONE
match   OverLength         /\%89v./
" }

" Wild menu {
hi WildMenu
    \   ctermbg=10      ctermfg=0       cterm=NONE
    \     guibg=#aadbaa   guifg=#251b2e   gui=NONE
" }

" }}


" Syntax {{

" Comments {
hi Comment 
    \   ctermbg=NONE    ctermfg=6       cterm=NONE
    \     guibg=NONE      guifg=#5baabb   gui=NONE
" }

" Costants {
hi Constant
    \   ctermbg=NONE    ctermfg=10      cterm=NONE
    \     guibg=NONE      guifg=#aadbaa   gui=NONE
hi String
    \   ctermbg=NONE    ctermfg=3       cterm=NONE
    \     guibg=NONE      guifg=#f5f8d6   gui=NONE
hi link Number Constant
hi link Float Constant
hi link Boolean Constant
hi link Character Constant
" }

" Identifiers {
hi Identifier
    \   ctermbg=NONE    ctermfg=12      cterm=NONE
    \     guibg=NONE      guifg=#d9c9d9   gui=NONE
hi Function
    \   ctermbg=NONE    ctermfg=1       cterm=bold
    \     guibg=NONE      guifg=#ff4971   gui=bold
" }

" Statements and reserved words {
hi Statement
    \   ctermbg=NONE    ctermfg=12      cterm=NONE
    \     guibg=NONE      guifg=#b3c6ff   gui=NONE
hi Conditional
    \   ctermbg=NONE    ctermfg=11      cterm=NONE
    \     guibg=NONE      guifg=#ffffb3   gui=NONE
hi Repeat
    \   ctermbg=NONE    ctermfg=11      cterm=NONE
    \     guibg=NONE      guifg=#ffffb3   gui=NONE
hi Label
    \   ctermbg=NONE    ctermfg=5       cterm=NONE
    \     guibg=NONE      guifg=#c372c2   gui=NONE
hi Exception
    \   ctermbg=NONE    ctermfg=13      cterm=NONE
    \     guibg=NONE      guifg=#ff79c6   gui=NONE
hi link Keyword Statement
hi link Operator Normal
" }

" Preprocessor defined identifiers {
hi PreProc
    \   ctermbg=NONE    ctermfg=2       cterm=NONE
    \     guibg=NONE      guifg=#72c373   gui=NONE
hi link Include PreProc
hi link Define PreProc
hi link Macro PreProc
hi link PreCondit PreProc
" }

" Data types and structures {
hi Type
    \   ctermbg=NONE    ctermfg=3       cterm=NONE
    \     guibg=NONE      guifg=#f5f8d6   gui=NONE
hi link Structure Type
hi link StorageClass Type
hi link Typedef Type
" }

" Special {
hi Special
    \   ctermbg=NONE    ctermfg=13      cterm=NONE
    \     guibg=NONE      guifg=#ff79c6   gui=NONE
hi SpecialChar
    \   ctermbg=NONE    ctermfg=15      cterm=NONE
    \     guibg=NONE      guifg=#f7f7f7   gui=NONE
hi SpecialComment
    \   ctermbg=NONE    ctermfg=9       cterm=NONE
    \     guibg=NONE      guifg=#ff6a6a   gui=NONE
hi Debug
    \   ctermbg=NONE    ctermfg=9       cterm=NONE
    \     guibg=NONE      guifg=#ff6a6a   gui=NONE
hi link Tag Special
hi link Delimiter Normal
" }

let g:asdasd = 123

" Miscellaneous {
hi Error
    \   ctermbg=NONE    ctermfg=1       cterm=NONE
    \     guibg=NONE      guifg=#ff4971   gui=NONE
hi link Ignore Normal
hi Underlined
    \   ctermbg=NONE    ctermfg=NONE    cterm=underline
    \     guibg=NONE      guifg=NONE      gui=underline
" }

hi Todo
    \   ctermbg=NONE    ctermfg=1       cterm=bold,underline
    \     guibg=NONE      guifg=#ff4971   gui=bold,underline

" }}

" Vim highlight links {{

hi link vimFunction Function
hi link vimIsCommand PreProc

" }}
