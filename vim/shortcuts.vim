" ======================================================================================
"   Name:       shortcuts.vim
"   Author:     Gurpreet Singh
"   Url:        https://github.com/ffs97/dotfiles/vim/shortcuts.vim
"   License:    The MIT License (MIT)
"
"   Editor shortcuts for [g]vim
" ======================================================================================

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configuring the User Interface

" Tabs and buffers {{

nmap <c-t> :tabnew<CR>

nmap <a-left> :tabprevious<CR>
nmap <a-right> :tabnext<CR>
imap <a-left> <esc>:tabprev<CR>a<right>
imap <a-right> <esc>:tabnext<CR>a<right>

nmap <a-w> :bd<cr>
imap <a-w> <c-o>:bd<cr>

nmap <c-s> :w!<CR>
imap <c-s> <c-o>:w!<CR>

" }}

" Split navigation {{

nmap <c-j> <c-w><down>
nmap <c-k> <c-w><up>
nmap <c-l> <c-w><right>
nmap <c-h> <c-w><left>

" }}

" Scrolling {{

imap <c-up> <c-o><c-y>
imap <c-down> <c-o><c-e>
nmap <c-up> <c-y>
nmap <c-down> <c-e>

" }}

" Terminal {{

if has("gui_running")
	nmap <F3> :tab terminal<CR>
endif

" }}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configuring the Editor

" Selection {{

nmap <S-up> v<up>
nmap <S-down> v<down>
nmap <S-left> v<left>
nmap <S-right> v<right>
nmap <c-a> ggVG
imap <S-right> <c-o>v<right>
imap <S-left> <esc>v<left>
imap <S-up> <esc>v<up>
imap <S-down> <c-o>v<down>
imap <S-kHome> <c-o>v^
imap <S-kend> <c-o>v$<left>
nmap <S-khome> v^
nmap <S-kend> v$
imap <khome> <c-o>^

" }}

" Word deletion {{

imap <c-BS> <c-w>
imap <c-Del> <c-o>dw

" }}

" Copy, cut, and paste {{

imap <c-v> <esc>pi<right>
nmap <c-d> "ayy"ap$
imap <c-d> <esc>"ayy<esc>"ap`^i
imap <c-x> <c-o>dd
imap <c-c> <c-o>yy
vmap <c-d> "ay`>"ap

" }}

" Search and Replace {{

vmap <c-k> y:%s/<c-r>"//g<left><left>
vmap <c-s> y/<c-r>"
nmap <F3> :set hlsearch!<CR>

" }}

" Undo/Redo {{

imap <c-z> <c-o>u
imap <a-z> <c-o><c-r>

" }}

" Moving Lines {{

imap <a-up> <esc>dd<up><up>pi
imap <a-down> <esc>ddpi
nmap <a-up> dd<up><up>p
nmap <a-down> ddp

" }}

" Jumping {{

imap <c-kend> <esc>G$A
imap <c-khome> <esc>gg0A

" }}
