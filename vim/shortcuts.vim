" ======================================================================================
"   Name:       shortcuts.vim
"   Author:     Gurpreet Singh
"   Url:        https://github.com/ffs97/dotfiles/vim/shortcuts.vim
"   License:    The MIT License (MIT)
"
"   Editor shortcuts for [g]vim
" ======================================================================================

" --------------------------------------------------------------------------------------
" Configuring the User Interface

" Tabs and buffers {{
nmap <c-t> :tabnew<cr>

nmap <leader>th :tabprevious<cr>
nmap <leader>tl :tabnext<cr>
nmap <leader>tk :tabmove -1<cr>
nmap <leader>tj :tabmove +1<cr>

nmap <a-left> :tabprevious<cr>
nmap <a-right> :tabnext<cr>
nmap <a-s-left> :tabmove -1<cr>
nmap <a-s-right> :tabmove +1<cr>

function! CloseBuffer()
    if bufname() == ""
        exec "q"
    else
        exec "bd"
    endif
endfunction

nmap <a-w> :call CloseBuffer()<cr>
nmap <leader>td :call CloseBuffer()<cr>

imap <a-w> <c-o>:call CloseBuffer()<cr>

nmap <c-p> :ls<cr>:b 

nmap <c-s> :w!<cr>
imap <c-s> <c-o>:w!<cr>
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
	nmap <F4> :tab terminal<cr>
endif
" }}

" NERD Tree {{
nmap <c-n> :NERDTreeToggle<cr>
" }}

" --------------------------------------------------------------------------------------
" Configuring the Editor

" Selection {{
nmap <s-up> v<up>
nmap <s-down> v<down>
nmap <s-left> v<left>
nmap <s-right> v<right>
nmap <c-a> ggVG
imap <s-right> <c-o>v<right>
imap <s-left> <esc>v<left>
imap <s-up> <esc>v<up>
imap <s-down> <c-o>v<down>
imap <s-kHome> <c-o>v^
imap <s-kend> <c-o>v$<left>
nmap <s-khome> v^
nmap <s-kend> v$
imap <khome> <c-o>^
" }}

" Word deletion {{
map! <c-bs> <c-w>
map! <c-del> <c-o>dw
" }}

" Copy, cut, and paste {{
imap <c-v> <esc>pi<right>
cmap <c-v> <c-r>"
cmap <a-v> <c-r>*

nmap <c-d> "ayy"ap$
vmap <c-d> "ay`>"ap

imap <c-x> <c-o>dd
imap <c-c> <c-o>yy
" }}

" Search and Replace {{
vmap <c-k> y:%s/<c-r>"//g<left><left>
vmap <c-s> y/<c-r>"
nmap <F3> :set hlsearch!<cr>
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

" Tabular {{
map <leader>= :Tabular /=<cr>
" }}

" Get syntax group {{
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
    \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
    \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
" }}

" Commenting {{
imap <c-q> <c-o><leader>c<Space>
nmap <c-q> <leader>c<Space>
vmap <c-q> <leader>c<Space>
" }}
