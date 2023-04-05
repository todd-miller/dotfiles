set hidden
syntax on

" Insert Mode 
inoremap ∆ <Esc>:m .+1<CR>==gi
inoremap ˚ <Esc>:m .-2<CR>==gi


" Normal Mode 
noremap jk <esc>
nnoremap ∆ :m .+1<CR>==
nnoremap ˚ :m .-2<CR>==

" Visual Mode
vnoremap jk <esc> 

set timeoutlen=100
